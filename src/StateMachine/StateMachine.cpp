#include <Arduino.h>
#include "StateMachine.h"
#include "FlashMemory/FlashMemory.h"
#include "Nextion/Nextion.h"
#include "Network/Network.h"
#include "Time/MyTime.h"
#include "MicroSD/MicroSD.h"
#include <HTTPClient.h>
#include "Settings/Settings.h"
#include "ADC/ADS1232.h"
#include "RTOS/RTOS.h"
#include "Datalogger/Datalogger.h"
#include "PinMap.h"
#include "PictureListID.h"
#include "Utility\Utility.h"
#include "PublisherSubscriber/PublisherSubscriber.h"

/*****************************************************************************
 *******************************ESP32S-PIN************************************
 *                  ---------------------------------
 *              ---|3.3V     ---__---__-----      GND|---
 *              ---|EN/RST  |            | |       23|---VSPI_MOSI
 *            AI---|36       _______________       22|---SCL
 *            AI---|39      |               |       1|---TX0
 *            AI---|34      | ESP-WROOM-32  |       3|---RX0
 *            AI---|35      |               |      21|---SDA
 *           DIO---|32      |               |     GND|---
 *           DIO---|33      |               |      19|---VSPI_MISO
 *           DIO---|25      |_______________|      18|---VSPI_SCK
 *           DIO---|26                              5|---DIO
 *           DIO---|27                             17|---TX2
 *           DIO---|14                             16|---RX2
 *           DIO---|12                             -4|---DIO
 *              ---|GND                            -0|---DIO
 *           DIO---|13                              2|---DIO
 *           RX1---|9                              15|---DIO
 *           TX1---|10           _______            8|---SD1*
 *      *CSC/CMD---|11   ___    |       |    ____   7|---SD0*
 *              ---|Vin |EN |   |       |   |BOOT|  6|---SCK/CLK*
 *                  ------------|_______|------------
 *
 *          *Pins are connected to the integrated SPI Flash integrated on
 *           ESP-32 and are not recommended for other uses.
 ******************************************************************************/

// 36,//can't be used as output pin
// 39,////can't be used as output pin
// 34,//can't be used as output pin
// 35,//can't be used as output pin
// 9,
// 10,
// 11,6,7,8
// uint8_t pin[10] = {
//     12,
//     13,
//     15,
//     2,
//     32,
//     33,
//     25,
//     26,
//     27,
//     14};

void StateMachine::setup(void)
{
    uint8_t powerUpButtonWait = 2;
    bool flashBegin = false;
    uint8_t counter = 0;

    // pinMode(Pin_Buzzer, OUTPUT);
    // digitalWrite(Pin_Buzzer, 0);

    while (powerUpButtonWait > 0)
    {
        delay(1000);
        powerUpButtonWait--;
    }

    Serial.begin(115200);
    NexSerial.begin(115200);
    while (!NexSerial)
        ;
    hmi->showPage("start");
    // waiting for Nextion page ready
    while (!hmi->getWaitingEndSignal())
    {
        hmi->serialEvent_2();
        delay(100);
        if (++counter > 10)
        {
            hmi->showPage("start"); // call back start page if still no respons from LCD
            counter = 0;
        }
    }
    Serial.end();

    rtos->updateStartProgressBar(5);
    while (flashBegin == false)
    {
        flashBegin = initFlash(MEMORY_SIZE);
        delay(200);
    }
    delay(10);

    rtos->updateStartProgressBar(5);
    if (fdata->getDebugMode())
    {
        Serial.begin(fdata->getBaudrateSerial(debugging));
        while (!Serial)
            ;
    }
    else
    {
    }
    LogSerial.begin(fdata->getBaudrateSerial(logging));
    while (!LogSerial)
        ;

    rtos->updateStartProgressBar(5);
    ads->begin();
    rtos->setup();
    rtos->updateStartProgressBar(5);
    net->setup();
    initTime();
    rtos->updateStartProgressBar(5);
    hmi->init();
    sdcard->setup();
    rtos->updateStartProgressBar(5);
    pubSubs->setup();

    while (rtos->startProgressBar < 100)
    {
        // Serial.println(String() + "Progress: " + rtos->startProgressBar + " %");
        rtos->updateStartProgressBar(5);
        delay(50);
    }

    // digitalWrite(Pin_Buzzer, 1);
    // delay(100);
    // digitalWrite(Pin_Buzzer, 0);
}

bool StateMachine::initTime(void)
{
    mtime.initOffset(fdata->getTimezone());
    return mtime.tBegin();
}

bool StateMachine::initFlash(uint16_t memory)
{
    if (memory > MEMORY_SIZE)
        return false;
    return fdata->begin(memory);
}

// void StateMachine::initSDCard(void)
// {
//     sdcard->setup();
// }

/******************
 * List of Button at HomeScreen
 * 0) Network
 * 1) Settings
 * 2) Measurement Units
 * 3) Data logger
 * 4) EN/DIS Channel 1
 * 5) EN/DIS Channel 2
 * 6) EN/DIS Channel 3
 * 7) EN/DIS Channel 4
 * 8) EN/DIS Channel 5
 * 9) EN/DIS Channel 6
 * 10) Tare Channel 1
 * 11) Tare Channel 2
 * 12) Tare Channel 3
 * 13) Tare Channel 4
 * 14) Tare Channel 5
 * 15) Tare Channel 6
 */

uint8_t StateMachine::homeScreen(void)
{
    uint8_t button[16] = {0};
    bool enDisChannel[MAX_CHANNEL];
    bool sClock = false;
    bool sClockUpdate = false;
    uint8_t wifiSignal = 0;
    String tempString;
    char timeString[10];
    char timeNDateString[20];

    hmi->showPage("home");
    hmi->waitForPageRespon();

    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
    {
        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
        updateButtonToggleStateToNextion(i);
        prevWeightString[i] = "00000.00";
        hmi->setStringToNextion((String() + "t_ch" + (i + 1) + ".txt"), prevWeightString[i]);
        hmi->setStringToNextion(String() + "t_mu" + (i + 1) + ".txt", getStringUnit(fdata->getMeasurementUnit()));
        pubSubs->setWeightString(i, prevWeightString[i]);
    }

    batProgressBarShowed = true;
    // initialize the signal level base on the last signal value
    net->checkConnection(&wifiSignal, &rtos->wifiConnectionTriggered);
    updateSignalIndicatorToNextion(wifiSignal, true);
    updateBatteryIndicatorToNextion(rtos->batteryPercent, true);

    // while (true)
    // {
    //     pubSubs->routineTask();
    // }

    while (true)
    {
        UBaseType_t mainFreeStackNum = 0;
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(NULL);
        // Serial.printf("mainFreeStackNum: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_01_c1_handle);
        // Serial.printf("task_01_c1_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_02_c1_handle);
        // Serial.printf("task_02_c1_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_04_c1_handle);
        // Serial.printf("task_04_c1_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_05_c1_handle);
        // Serial.printf("task_05_c1_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_06_c1_handle);
        // Serial.printf("task_06_c1_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_07_c1_handle);
        // Serial.printf("task_07_c1_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_01_c0_handle);
        // Serial.printf("task_01_c0_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_02_c0_handle);
        // Serial.printf("task_02_c0_handle: %d bytes\n", mainFreeStackNum);
        // mainFreeStackNum = uxTaskGetStackHighWaterMark(task_03_c0_handle);
        // Serial.printf("task_03_c0_handle: %d bytes\n", mainFreeStackNum);

        // delay(200);

        mtime.updateRTC_N_NTPTime();

        if (!sClockUpdate)
        {
            if (rtos->interruptSeconds == 0)
            {
                sClock = !sClock;
                hmi->setIntegerToNextion("sClock.en", sClock);
                hmi->setVisObjectNextion("clock", !sClock);
                if (sClock)
                {
                    // Serial.println("Scrool text enabled");
                }
                else
                {
                    // Serial.println("Scrool text disabled");
                }
                sClockUpdate = true;
            }
        }
        if (rtos->interruptSeconds != 0)
            sClockUpdate = false;

        if (!sClock)
        {
            if (rtos->secondTriggered[0])
            {
                mtime.getTimeStr(timeString);
                // //Serial.println(timeString);
                hmi->setStringToNextion("clock.txt", timeString);
                rtos->secondTriggered[0] = 0;
            }
        }
        else
        {
            if (rtos->secondTriggered[1])
            {
                mtime.getTimeAndDateStr(timeNDateString);
                // tempString = String() + "00:" + interruptSeconds + " 18/03/2021";
                // //Serial.println(timeNDateString);
                hmi->setStringToNextion("sClock.txt", timeNDateString);
                rtos->secondTriggered[1] = 0;
            }
        }

        if (rtos->minuteTriggered)
        {
            String newDateString = mtime.getDateStr();

            if (oldDateString != newDateString)
            {
                if (fdata->getDatalogStatus(local))
                {
                    oldDateString = newDateString;
                    sdcard->updateCsvFileName();
                }
            }
            rtos->minuteTriggered = false;
        }

        for (int i = 0; i < 16; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                if (button[0])
                {
                    return NETWORK;
                }
                else if (button[1])
                {
                    return SETTINGS;
                }
                else if (button[2])
                {
                    return UNITS;
                }
                else if (button[3])
                {
                    return DATALOG;
                }
                else if (button[4])
                {
                    enDisChannel[Channel1] = !enDisChannel[Channel1];
                    fdata->setChannelEnDisStatus(Channel1, enDisChannel[Channel1]);
                    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                    {
                        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
                        updateButtonToggleStateToNextion(i);
                    }
                    if (enDisChannel[Channel1])
                    {
                        // Serial.println("Channel 1 : Enabled");
                    }
                    else
                    {
                        // Serial.println("Channel 1 : Disabled");
                    }
                }
                else if (button[5])
                {
                    enDisChannel[Channel2] = !enDisChannel[Channel2];
                    fdata->setChannelEnDisStatus(Channel2, enDisChannel[Channel2]);
                    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                    {
                        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
                        updateButtonToggleStateToNextion(i);
                    }
                    if (enDisChannel[Channel2])
                    {
                        // Serial.println("Channel 2 : Enabled");
                    }
                    else
                    {
                        // Serial.println("Channel 2 : Disabled");
                    }
                }
                else if (button[6])
                {
                    enDisChannel[Channel3] = !enDisChannel[Channel3];
                    fdata->setChannelEnDisStatus(Channel3, enDisChannel[Channel3]);
                    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                    {
                        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
                        updateButtonToggleStateToNextion(i);
                    }
                    if (enDisChannel[Channel3])
                    {
                        // Serial.println("Channel 3 : Enabled");
                    }
                    else
                    {
                        // Serial.println("Channel 3 : Disabled");
                    }
                }
                else if (button[7])
                {
                    enDisChannel[Channel4] = !enDisChannel[Channel4];
                    fdata->setChannelEnDisStatus(Channel4, enDisChannel[Channel4]);
                    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                    {
                        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
                        updateButtonToggleStateToNextion(i);
                    }
                    if (enDisChannel[Channel4])
                    {
                        // Serial.println("Channel 4 : Enabled");
                    }
                    else
                    {
                        // Serial.println("Channel 4 : Disabled");
                    }
                }
                else if (button[8])
                {
                    enDisChannel[Channel5] = !enDisChannel[Channel5];
                    fdata->setChannelEnDisStatus(Channel5, enDisChannel[Channel5]);
                    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                    {
                        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
                        updateButtonToggleStateToNextion(i);
                    }
                    if (enDisChannel[Channel5])
                    {
                        // Serial.println("Channel 5 : Enabled");
                    }
                    else
                    {
                        // Serial.println("Channel 5 : Disabled");
                    }
                }
                else if (button[9])
                {
                    enDisChannel[Channel6] = !enDisChannel[Channel6];
                    fdata->setChannelEnDisStatus(Channel6, enDisChannel[Channel6]);
                    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                    {
                        enDisChannel[i] = fdata->getChannelEnDisStatus(i);
                        updateButtonToggleStateToNextion(i);
                    }
                    if (enDisChannel[Channel6])
                    {
                        // Serial.println("Channel 6 : Enabled");
                    }
                    else
                    {
                        // Serial.println("Channel 6 : Disabled");
                    }
                }
                else if (button[10])
                {
                    if (enDisChannel[Channel1])
                    {
                        ads->enableTare[Channel1] = true;
                        // Serial.println("Channel 1 Tare >>>>>>>>>>>>>>>>>>>");
                        //  while (ads->enableTare[Channel1])
                        //      ;
                        hmi->showSavingBarAnimation(100);
                    }
                }
                else if (button[11])
                {
                    if (enDisChannel[Channel2])
                    {
                        ads->enableTare[Channel2] = true;
                        // Serial.println("Channel 2 Tare >>>>>>>>>>>>>>>>>>>");
                        //  while (ads->enableTare[Channel2])
                        //      ;
                        hmi->showSavingBarAnimation(100);
                    }
                }
                else if (button[12])
                {
                    if (enDisChannel[Channel3])
                    {
                        ads->enableTare[Channel3] = true;
                        // Serial.println("Channel 3 Tare >>>>>>>>>>>>>>>>>>>");
                        //  while (ads->enableTare[Channel3])
                        //      ;
                        hmi->showSavingBarAnimation(100);
                    }
                }
                else if (button[13])
                {
                    if (enDisChannel[Channel4])
                    {
                        ads->enableTare[Channel4] = true;
                        // Serial.println("Channel 4 Tare >>>>>>>>>>>>>>>>>>>");
                        //  while (ads->enableTare[Channel4])
                        //      ;
                        hmi->showSavingBarAnimation(100);
                    }
                }
                else if (button[14])
                {
                    if (enDisChannel[Channel5])
                    {
                        ads->enableTare[Channel5] = true;
                        // Serial.println("Channel 5 Tare >>>>>>>>>>>>>>>>>>>");
                        //  while (ads->enableTare[Channel5])
                        //      ;
                        hmi->showSavingBarAnimation(100);
                    }
                }
                else if (button[15])
                {
                    if (enDisChannel[Channel6])
                    {
                        ads->enableTare[Channel6] = true;
                        // Serial.println("Channel 6 Tare >>>>>>>>>>>>>>>>>>>");
                        //  while (ads->enableTare[Channel6])
                        //      ;
                        hmi->showSavingBarAnimation(100);
                    }
                }
            }
        }
        updateWeightStringToNextion();
        updateExceedMaximumFlagToNextion();
        if (net->checkConnection(&wifiSignal, &rtos->wifiConnectionTriggered))
        {
            rtos->wifiConnected = true;
            updateSignalIndicatorToNextion(wifiSignal, false);
        }
        else
        {
            updateSignalIndicatorToNextion(0, false);
            rtos->wifiConnected = false;
        }

        updateBatteryIndicatorToNextion(rtos->batteryPercent, false);

        if (rtos->secondTriggered[5])
        {
            // if (!fdata->isAllChannelDisabled())
            // {
            for (uint8_t i = 0; i < 3; i++)
            {
                if (fdata->getDatalogStatus(i))
                {
                    if (!dataLoggingState[i])
                    {
                        if (logger->checkSchedule(_on_, i))
                            dataLoggingState[i] = true;
                    }
                    else
                    {
                        logger->logData(i);
                        if (logger->checkSchedule(_off_, i))
                            dataLoggingState[i] = false;
                    }
                }
            }
            // }
            rtos->secondTriggered[5] = 0;
        }
    }
    return 0;
}
uint8_t StateMachine::networkSettings(void)
{
    while (true)
    {
        if (net->networkConfig())
        {
            net->networkScanning();
        }
        else
            break;
    }
    return 0;
}
uint8_t StateMachine::settings(void)
{
    setting->mainMenu();
    return 0;
}
uint8_t StateMachine::measurementUnits(void)
{
    uint8_t button;

    hmi->showPage("meaunit");
    // hmi->setIntegerToNextion("unit.val", fdata->getMeasurementUnit());
    hmi->waitForPageRespon();
    // Serial.println("Measurement Unit page opened");

    updateSelectedUnitToNextion(fdata->getMeasurementUnit());
    while (true)
    {
        while (!hmi->checkAnyButtonPressed(&button))
        {
            // hmi->serialEvent_2();
        }
        if (hmi->getExitPageFlag())
        {
            break;
        }
        for (uint8_t i = 0; i < 10; i++)
        {
            if (hmi->getDataButton(i))
            {
                if (fdata->setMeasurementUnit(i))
                {
                    updateSelectedUnitToNextion(fdata->getMeasurementUnit());
                    // hmi->setIntegerToNextion("unit.val", fdata->getMeasurementUnit());
                }
            }
        }
    }
    return 0;
}
uint8_t StateMachine::datalogSettings(void)
{
    bool exitFlag = false;
    // __start:
    // Serial.println("Datalog page opened");
    while (!exitFlag)
    {
        hmi->showPage("datalog");
        hmi->waitForPageRespon();
        bool button[3];
        button[0] = hmi->getDataButton(0);
        button[1] = hmi->getDataButton(1);
        button[2] = hmi->getDataButton(2);

        while (!button[0] && !button[1] && !button[2] && !exitFlag)
        {
            exitFlag = hmi->getExitPageFlag();
            button[0] = hmi->getDataButton(0);
            button[1] = hmi->getDataButton(1);
            button[2] = hmi->getDataButton(2);
            // Serial.println("No btn pressed!");
            // delay(1000);
        }

        if (button[0])
        {
            while (!hmi->getExitPageFlag())
            {
                if (logger->setting(serial) == 1)
                    break;
            }
            // goto __start;
        }
        else if (button[1])
        {
            while (!hmi->getExitPageFlag())
            {
                if (logger->setting(local) == 1)
                    break;
            }
            // goto __start;
        }
        else if (button[2])
        {
            while (!hmi->getExitPageFlag())
            {
                if (logger->setting(remote) == 1)
                    break;
            }
            // goto __start;
        }
    }
    Serial.println("Exit datalog");
    return 0;
}

/////////Private function
void StateMachine::updateButtonToggleStateToNextion(uint8_t channel)
{
    String bt_enVariable[MAX_CHANNEL] = {
        "bt_en1.val",
        "bt_en2.val",
        "bt_en3.val",
        "bt_en4.val",
        "bt_en5.val",
        "bt_en6.val"};
    hmi->setIntegerToNextion(bt_enVariable[channel].c_str(), fdata->getChannelEnDisStatus(channel));
}

void StateMachine::updateWeightStringToNextion(void)
{
    String newWeightString[MAX_CHANNEL];

    for (uint8_t i = 0; i < MAX_CHANNEL; i++)
    {
        if (fdata->getChannelEnDisStatus(i))
        {
            newWeightString[i] = ads->getStringWeightInUnit(i);
            if (prevWeightString[i] != newWeightString[i])
            {
                hmi->setStringToNextion((String() + "t_ch" + (i + 1) + ".txt"), newWeightString[i]);
                // Serial.println(String() + "Updated: " + " Channel " + (i + 1) + " weight");
            }
            prevWeightString[i] = newWeightString[i];
            pubSubs->setWeightString(i, prevWeightString[i]);
        }
    }
}

void StateMachine::updateSignalIndicatorToNextion(uint8_t newValue, bool force)
{
    if ((newValue != signalValue) || force)
    {
        hmi->setIntegerToNextion("signal.val", newValue);
        signalValue = newValue;
        // Serial.println(String() + "Updated: " + newValue + "%" + " signal");
    }
}
void StateMachine::updateBatteryIndicatorToNextion(uint8_t newValue, bool force)
{
    if (newValue == 0xFF)
        return;
    if (newValue > 10)
    {
        if (!batProgressBarShowed)
        {
            hmi->setVisObjectNextion("battx", false);
            hmi->setVisObjectNextion("batt", true);
            batProgressBarShowed = true;
        }
        if ((newValue != batteryValue) || force)
        {
            hmi->setIntegerToNextion("batt.val", newValue);
            batteryValue = newValue;
            // Serial.println(String() + "Updated: " + newValue + "%" + " battery");
        }
        rtos->counterDownSecondsBattLow = 0;
    }
    else
    {
        if (batProgressBarShowed)
        {
            hmi->setVisObjectNextion("batt", false);
            hmi->setVisObjectNextion("battx", true);
            // if (!fdata->getDebugMode())
            // rtos->counterDownSecondsBattLow = Timer_Second_Battery_Low;
            batProgressBarShowed = false;
        }

        // if (!rtos->counterDownSecondsBattLow && !fdata->getDebugMode())
        // {
        //     hmi->showPage("off");
        //     hmi->waitForPageRespon();

        //     rtos->counterDownSecondsBattLow = 5;
        //     // Serial.println("Battery is critically low!");
        //     while (rtos->counterDownSecondsBattLow)
        //     {
        //         // Serial.printf("Turning off in %ds!\n", rtos->counterDownSecondsBattLow);
        //         // delay(1000);
        //     }
        //     hmi->showPage("stb");
        //     hmi->waitForPageRespon();

        //     rtos->powerOffFlag = true;
        //     while (rtos->powerOffFlag)
        //     {
        //         // Do Nothing
        //         // Serial.println("Do nothing!");
        //         // delay(1000);
        //         // esp_deep_sleep_start();
        //     }
        //     // ESP.restart();
        // }
    }
}

String StateMachine::getStringUnit(uint8_t unit)
{
    if (unit == gram)
        return "[g]";
    else if (unit == milligram)
        return "[mg]";
    else if (unit == pound)
        return "[lb]";
    else if (unit == ounce)
        return "[oz]";
    else if (unit == troy_ounce)
        return "[ozt]";
    else if (unit == carat)
        return "[ct]";
    else if (unit == kilogram)
        return "[kg]";
    else if (unit == newton)
        return "[N]";
    else if (unit == dram)
        return "[d]";
    else if (unit == grain)
        return "[GN]";
    else
        return "[g]";
}

bool StateMachine::isWeightExceedMaximumValue(uint8_t channel, float actualWeight)
{
    if (fdata->getGramMaximum(channel) != fdata->getGramMaximum(channel))
    { // check if float is nan value
        return false;
    }
    return ((actualWeight > (fdata->getGramMaximum(channel) / ads->dividerUnits[fdata->getMeasurementUnit()])) && (actualWeight != ERROR_WEIGHT));
}

void StateMachine::updateExceedMaximumFlagToNextion(void)
{
    // float actual[MAX_CHANNEL];
    uint32_t temp;

    // for (uint8_t i = 0; i < MAX_CHANNEL; i++)
    // {
    //     if (fdata->getChannelEnDisStatus(i))
    //         actual[i] = ads->getWeightInUnit(i);
    // }

    if (rtos->secondTriggered[2])
    {
        for (uint8_t i = 0; i < MAX_CHANNEL; i++)
        {
            if (fdata->getChannelEnDisStatus(i))
            {
                if (isWeightExceedMaximumValue(i, ads->getWeightInUnit(i)))
                {
                    hmi->setIntegerToNextion((String() + "max" + (i + 1) + ".val"), 1);
                    maxState[i] = true;
                }
                else
                {
                    if (maxState[i] == true)
                    {
                        hmi->getValue((String() + "max" + (i + 1) + ".val").c_str(), &temp);
                        // //Serial.println(String() + "max" + (i + 1) + ":" + temp);
                        if (temp == 1)
                        {
                            hmi->setIntegerToNextion((String() + "max" + (i + 1) + ".val"), 0);
                            maxState[i] = false;
                        }
                    }
                }
            }
        }
        rtos->secondTriggered[2] = 0;
    }
}

void StateMachine::updateSelectedUnitToNextion(uint8_t unit)
{
    for (uint8_t i = 0; i < 10; i++)
    {
        hmi->setIntegerToNextion(String() + "b" + i + ".picc", unit == i ? Measurement_List_Select : Measurement_List_Bkg);
    }
}
