#include "Settings.h"
#include "Nextion/Nextion.h"
#include "FlashMemory/FlashMemory.h"
#include "Time/MyTime.h"
#include "RTOS/RTOS.h"
#include "ADC/ADS1232.h"
#include "PictureListID.h"
#include "Utility/Utility.h"
#include "PinMap.h"

void Settings::mainMenu(void)
{
    bool button[8];
    bool adcRateValue = fdata->getSpeedRate();
    bool mute = fdata->getBuzzerMute();
    uint8_t menuPage = 0;

start:

    if (menuPage == 0)
    {
        hmi->showPage("settings");
        hmi->waitForPageRespon();
    }
    else
    {
        hmi->showPage("settings1");
        hmi->waitForPageRespon();
        if (adcRateValue && fdata->getSpeedRate())
        {
            hmi->setIntegerToNextion("b0.picc", Settings1_Menu_Normal_Btn);
            hmi->setIntegerToNextion("b0.picc2", Settings1_Menu_Prs_Btn);
        }
        else
        {
            if (adcRateValue != fdata->getSpeedRate())
                adcRateValue = fdata->getSpeedRate();
            hmi->setIntegerToNextion("b0.picc", Settings11_Menu_Normal_Btn);
            hmi->setIntegerToNextion("b0.picc2", Settings11_Menu_Prs_Btn);
        }
        if (mute && fdata->getBuzzerMute())
        {
            hmi->setIntegerToNextion("b2.picc", Settings11_Menu_Normal_Btn);
            hmi->setIntegerToNextion("b2.picc2", Settings11_Menu_Prs_Btn);
        }
        else
        {
            if (mute != fdata->getBuzzerMute())
                mute = fdata->getBuzzerMute();
            hmi->setIntegerToNextion("b2.picc", Settings1_Menu_Normal_Btn);
            hmi->setIntegerToNextion("b2.picc2", Settings1_Menu_Prs_Btn);
        }
    }
    // Serial.println("Settings page opened");

    while (true)
    {
        // hmi->serialEvent_2();
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Settings page");
            return;
        }
        for (int i = 0; i < 8; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    if (menuPage == 0)
                    {
                        // Serial.println("Timezone page opened");
                        timeZone();
                    }
                    else if (menuPage == 1)
                    {
                        // Serial.println("ADC Rate value changed");
                        adcRateValue = !adcRateValue;
                        fdata->setSpeedRate(adcRateValue);
                        hmi->showSavingBarAnimation(1000);
                    }
                    break;
                case 1:
                    // Serial.println("Brightness page opened");
                    if (menuPage == 0)
                        brightness();
                    else if (menuPage == 1)
                    {
                        hmi->setVisObjectNextion("q0", true);
                        hmi->setVisObjectNextion("b8", true);
                        hmi->setVisObjectNextion("b9", true);

                        while (true)
                        {
                            if (hmi->getExitPageFlag())
                            {
                                // Serial.println("Exit Settings page");
                                return;
                            }
                            if (hmi->getDataButton(8))
                            {
                                break;
                            }
                            if (hmi->getDataButton(9))
                            {
                                if (fdata->resetDefault())
                                    hmi->showSavingBarAnimation(250);
                                break;
                            }
                        }

                        hmi->setVisObjectNextion("b8", false);
                        hmi->setVisObjectNextion("b9", false);
                        hmi->setVisObjectNextion("q0", false);
                        hmi->flushAvailableButton();
                    }
                    break;
                case 2:
                    // Serial.println("Maximum page opened");
                    if (menuPage == 0)
                        setLimit();
                    else
                    {
                        mute = !mute;
                        fdata->setBuzzerMute(mute);
                        hmi->showSavingBarAnimation(500);
                    }
                    break;
                case 3:
                    // Serial.println("Set time and date");
                    if (menuPage == 0)
                        timeAndDate();
                    break;
                case 4:

                    if (menuPage == 0)
                    {
                        // Serial.println("Debug page opened");
                        debugMenu();
                    }
                    else
                    {
                        // hmi->showPage("off");
                        // hmi->waitForPageRespon();

                        // rtos->counterDownSecondsBattLow = 5;
                        // // Serial.println("Powered off!");
                        // while (rtos->counterDownSecondsBattLow)
                        // {
                        //     // Serial.printf("Turning off in %ds!\n", rtos->counterDownSecondsBattLow);
                        //     // delay(1000);
                        // }

                        // hmi->showPage("stb");
                        // hmi->waitForPageRespon();

                        rtos->powerOffFlag = 2;
                        while (rtos->powerOffFlag)
                        {
                            // Do Nothing
                            // Serial.println("Do nothing!");
                            // delay(1000);
                            // esp_deep_sleep_start();
                        }
                        // ESP.restart();
                    }
                    break;
                case 5:
                    // Serial.println("Calibration page opened");
                    if (menuPage == 0)
                        calibrationSensor();
                    break;
                case 6:
                    // Serial.println("Left menu page");
                    if (menuPage == 1)
                    {
                        // hmi->showPage("settings");
                        // hmi->waitForPageRespon();
                        menuPage = 0;
                    }
                    break;
                case 7:
                    // Serial.println("Right menu page");
                    if (menuPage == 0)
                    {
                        // hmi->showPage("settings1");
                        // hmi->waitForPageRespon();
                        menuPage = 1;
                    }
                    break;
                default:
                    break;
                }
                goto start;
            }
        }
    }
}

void Settings::updateSelectedTimezoneToNextion(void)
{
    switch (fdata->getTimezone())
    {
    case 0:
        hmi->setIntegerToNextion("b0.picc", Timezone_Menu_Selected_Bkg);
        hmi->setIntegerToNextion("b1.picc", Timezone_Menu_Normal_Btn);
        hmi->setIntegerToNextion("b2.picc", Timezone_Menu_Normal_Btn);
        break;
    case 1:
        hmi->setIntegerToNextion("b1.picc", Timezone_Menu_Selected_Bkg);
        hmi->setIntegerToNextion("b0.picc", Timezone_Menu_Normal_Btn);
        hmi->setIntegerToNextion("b2.picc", Timezone_Menu_Normal_Btn);
        break;
    case 2:
        hmi->setIntegerToNextion("b2.picc", Timezone_Menu_Selected_Bkg);
        hmi->setIntegerToNextion("b0.picc", Timezone_Menu_Normal_Btn);
        hmi->setIntegerToNextion("b1.picc", Timezone_Menu_Normal_Btn);
        break;
    default:
        hmi->setIntegerToNextion("b0.picc", Timezone_Menu_Normal_Btn);
        hmi->setIntegerToNextion("b1.picc", Timezone_Menu_Normal_Btn);
        hmi->setIntegerToNextion("b2.picc", Timezone_Menu_Normal_Btn);
        break;
    }
    mtime.initOffset(fdata->getTimezone());
    configTime(mtime.gmtOffset_sec, mtime.daylightOffset_sec, mtime.ntpServer);
}

void Settings::timeZone(void)
{
    bool button[4];
    hmi->showPage("tzone");
    hmi->waitForPageRespon();

    updateSelectedTimezoneToNextion();

    while (true)
    {
        // hmi->serialEvent_2();
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Timezone page");
            return;
        }
        for (int i = 0; i < 4; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    // Serial.println("UTC 07:00 selected");
                    break;
                case 1:
                    // Serial.println("UTC 08:00 selected");
                    break;
                case 2:
                    // Serial.println("UTC 09:00 selected");
                    break;
                default:
                    break;
                }
                fdata->setTimezone(i);
                updateSelectedTimezoneToNextion();
            }
        }
    }
}

void Settings::brightness(void)
{
    bool button[8];
    bool popup = false;
    char buffer[10];

    hmi->showPage("bright");
    hmi->waitForPageRespon();
    if (fdata->getDimScreenTimer() == 0)
    {
        hmi->setVisObjectNextion("q1", false);
        hmi->setStringToNextion("b0.txt", "Never");
    }
    else
    {
        sprintf(buffer, "%d", fdata->getDimScreenTimer());
        hmi->setStringToNextion("b0.txt", buffer);
        hmi->setVisObjectNextion("q1", true);
    }
    // Serial.printf("bright %d%\n", fdata->getScreenBrightness());
    hmi->setIntegerToNextion("h0.val", fdata->getScreenBrightness());

    while (!hmi->getExitPageFlag())
    {
        for (int i = 0; i < 8; i++)
        {
            button[i] = hmi->getDataButton(i);
            // Serial.printf("button[%d] = %d\n", i, button[i]);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    popup = !popup;
                    hmi->setVisObjectNextion("q2", popup);
                    for (uint8_t a = 1; a <= 6; a++)
                    {
                        sprintf(buffer, "b%d", a);
                        hmi->setVisObjectNextion(buffer, popup);
                    }
                    break;

                case 7:
                {
                    uint8_t val = static_cast<uint8_t>(hmi->getDataInteger(0));
                    fdata->setScreenBrightness(val);
                    // Serial.printf("Screen brightness set = %d%!\n", val);
                }
                break;

                default:
                    fdata->setDimScreenTimer(i - 1);
                    rtos->dimmCounterDownSecond = fdata->getDimScreenTimer();
                    hmi->setVisObjectNextion("q2", false);
                    for (uint8_t a = 1; a <= 6; a++)
                    {
                        sprintf(buffer, "b%d", a);
                        hmi->setVisObjectNextion(buffer, false);
                    }
                    if (fdata->getDimScreenTimer() == 0)
                    {
                        hmi->setVisObjectNextion("q1", false);
                        hmi->setStringToNextion("b0.txt", "Never");
                    }
                    else
                    {
                        sprintf(buffer, "%d", fdata->getDimScreenTimer());
                        hmi->setStringToNextion("b0.txt", buffer);
                        hmi->setVisObjectNextion("q1", true);
                    }

                    popup = false;
                    break;
                }
            }
        }
    }
}

void Settings::updateLimitValueToNextion(void)
{
    char buffer[20];
    for (uint8_t i = 0; i < 6; i++)
    {
        sprintf(buffer, "b%d.txt", i);
        hmi->setStringToNextion(buffer, String(fdata->getGramMaximum(i)).c_str());
    }
    hmi->setStringToNextion("b6.txt", String(fdata->getMinimumBattery()).c_str());
    hmi->setStringToNextion("b7.txt", String(fdata->getMaximumBattery()).c_str());
}
void Settings::setLimit(void)
{
    bool button[8];
    bool button1[2] = {false};
    String newValueStr;
    float newValue = 0;
    uint8_t batteryPercent = 0;
    uint8_t batteryPercentNew = 0;
    float batteryVoltage = 0.0;
    char buffer[20];

start:
    button1[0] = false;
    button1[1] = false;

    hmi->showPage("limit");
    hmi->waitForPageRespon();

    updateLimitValueToNextion();

    while (true)
    {
        batteryPercentNew = rtos->batteryPercent;
        if (batteryPercent != batteryPercentNew && batteryPercentNew != 0xFF)
        {
            sprintf(buffer, "%s%", utils.integerToString(batteryPercentNew, 3));
            hmi->setStringToNextion("t1.txt", buffer);
            hmi->setIntegerToNextion("j0.val", batteryPercentNew);
            batteryPercent = batteryPercentNew;
        }
        if (batteryVoltage != rtos->vBatActual)
        {
            sprintf(buffer, "%fV", rtos->vBatActual);
            hmi->setStringToNextion("t0.txt", buffer);
            batteryVoltage = rtos->vBatActual;
        }

        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Limit page");
            return;
        }
        for (int i = 0; i < 8; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                hmi->showPage("numpad");
                hmi->waitForPageRespon();
                if (i <= 5)
                {
                    sprintf(buffer, "%f", fdata->getGramMaximum(i));
                    hmi->setStringToNextion("num_string.txt", buffer);
                }
                else
                {
                    if (i == 6)
                    {
                        sprintf(buffer, "%f", fdata->getMinimumBattery());
                        hmi->setStringToNextion("num_string.txt", buffer);
                    }
                    else if (i == 7)
                    {
                        sprintf(buffer, "%f", fdata->getMaximumBattery());
                        hmi->setStringToNextion("num_string.txt", buffer);
                    }
                }
                hmi->flushAvailableButton();
                while (!button1[0] && !button1[1])
                {
                    // hmi->serialEvent_2();
                    button1[0] = hmi->getDataButton(0);
                    button1[1] = hmi->getDataButton(1);
                }
                if (button1[1])
                {
                    newValueStr = hmi->getDataString(0);
                    newValue = atof(newValueStr.c_str());
                    if (i <= 5)
                    {
                        // Serial.println(String() + "CH" + (i + 1) + " Gram Maximum set to " + newValueStr);
                        fdata->setGramMaximum(i, newValue);
                    }
                    else
                    {
                        if (i == 6)
                        {
                            // Serial.println(String() + "Battery Volt Minimum set to " + newValueStr);
                            fdata->setMinimumBattery(newValue);
                        }
                        else if (i == 7)
                        {
                            // Serial.println(String() + "Battery Volt Maximum set to " + newValueStr);
                            fdata->setMaximumBattery(newValue);
                        }
                    }
                }
                goto start;
            }
        }
    }
}

void Settings::timeAndDate(void)
{
    bool button[12];
    char buffer[20];
    int8_t data[6]; // hour,minute,second,date,month,year
    mtime.getRtcTime(&data[0], &data[1], &data[2]);
    mtime.getRtcDate(&data[3], &data[4], &data[5]);

    hmi->showPage("timedate");
    hmi->waitForPageRespon();

    for (uint8_t i = 0; i < 6; i++)
    {
        if (i == 2)
            continue;
        sprintf(buffer, "t%d.txt", i);
        hmi->setStringToNextion(buffer, utils.integerToString(data[i], 2));
    }

    while (true)
    {
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Time and Date page");
            return;
        }
        for (byte i = 0; i < 12; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    if (++data[0] > 23)
                        data[0] = 0;
                    hmi->setStringToNextion("t0.txt", utils.integerToString(data[0], 2));
                    break;
                case 1:
                    if (--data[0] < 0)
                        data[0] = 23;
                    hmi->setStringToNextion("t0.txt", utils.integerToString(data[0], 2));
                    break;
                case 2:
                    if (++data[1] > 59)
                        data[1] = 0;
                    hmi->setStringToNextion("t1.txt", utils.integerToString(data[1], 2));
                    break;
                case 3:
                    if (--data[1] < 0)
                        data[1] = 59;
                    hmi->setStringToNextion("t1.txt", utils.integerToString(data[1], 2));
                    break;
                case 4:
                    if (++data[3] > 31)
                        data[3] = 1;
                    hmi->setStringToNextion("t3.txt", utils.integerToString(data[3], 2));
                    break;
                case 5:
                    if (--data[3] < 1)
                        data[3] = 31;
                    hmi->setStringToNextion("t3.txt", utils.integerToString(data[3], 2));
                    break;
                case 6:
                    if (++data[4] > 12)
                        data[4] = 1;
                    hmi->setStringToNextion("t4.txt", utils.integerToString(data[4], 2));
                    break;
                case 7:
                    if (--data[4] < 1)
                        data[4] = 12;
                    hmi->setStringToNextion("t4.txt", utils.integerToString(data[4], 2));
                    break;
                case 8:
                    if (++data[5] > 99)
                        data[5] = 0;
                    hmi->setStringToNextion("t5.txt", utils.integerToString(data[5], 2));
                    break;
                case 9:
                    if (--data[5] < 0)
                        data[5] = 99;
                    hmi->setStringToNextion("t5.txt", utils.integerToString(data[5], 2));
                    break;
                case 10:
                    mtime.setRtcTime(data[0], data[1], 0);
                    hmi->showSavingBarAnimation(500);
                    break;
                case 11:
                    mtime.setRtcDate(data[3], data[4], data[5]);
                    hmi->showSavingBarAnimation(500);
                    break;
                default:
                    break;
                }
            }
        }
    }
}

// void Settings::batteryCapacity(void)
// {
//     bool button[2] = {false,
//                       false};
//     hmi->showPage("numpad");
//     hmi->waitForPageRespon();
//     hmi->setStringToNextion("num_string.txt", String() + fdata->getBatteryCapacity());
//     while (!button[0] && !button[1])
//     {
//         // hmi->serialEvent_2();
//         for (uint8_t i = 0; i < 2; i++)
//             button[i] = hmi->getDataButton(i);
//     }
//     if (button[1])
//     {
//         fdata->setBatteryCapacity(static_cast<uint16_t>(atoi(hmi->getDataString(0))));
//         //Serial.println(String() + "Battery capacity set: " + fdata->getBatteryCapacity() + " mAh");
//     }
// }

void Settings::showBaudrateOption(bool type, bool show)
{
    char buffer[10];
    if (type == debugging)
        hmi->setVisObjectNextion("q1", show);
    for (uint i = 0; i < 10; i++)
    {
        sprintf(buffer, "b%d", i);
        hmi->setVisObjectNextion(buffer, show);
    }
}

void Settings::updateSelectedBaudrateToNextion(bool type, uint8_t selected)
{
    char buffer[20];
    fdata->setBaudrateSerial(type, selected);
    // Serial.println(String() + "Baudrate set: " + fdata->getBaudrateSerial(type));

    for (uint8_t i = 0; i < 10; i++)
    {
        sprintf(buffer, "b%d.picc", i);
        if (i == selected)
        {
            hmi->setIntegerToNextion(buffer, Debug_Baud_Select);
        }
        else
        {
            hmi->setIntegerToNextion(buffer, Debug_Normal_Btn);
        }
    }
}
void Settings::debugMenu(void)
{
    bool button[12];
    bool enDisDebug = fdata->getDebugMode();

    hmi->showPage("debug");
    hmi->waitForPageRespon();

    hmi->setIntegerToNextion("bt0.val", enDisDebug);
    showBaudrateOption(debugging, enDisDebug);
    if (enDisDebug)
        updateSelectedBaudrateToNextion(debugging, fdata->getBaudrateSerialIndex(debugging));

    while (true)
    {
        // hmi->serialEvent_2();
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Debug page");
            return;
        }
        for (int i = 0; i < 12; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 10:
                    enDisDebug = !enDisDebug;
                    fdata->setDebugMode(enDisDebug);
                    hmi->setIntegerToNextion("bt0.val", enDisDebug);
                    showBaudrateOption(debugging, enDisDebug);
                    if (enDisDebug)
                    {
                        updateSelectedBaudrateToNextion(debugging, fdata->getBaudrateSerialIndex(debugging));
                        Serial.begin(fdata->getBaudrateSerial(debugging));
                        while (!Serial)
                            ;
                    }
                    else
                    {
                        Serial.end();
                    }
                    // Serial.println(String() + "Debug mode " + (enDisDebug ? "Enabled" : "Disabled"));
                    break;
                default:
                    Serial.end();
                    updateSelectedBaudrateToNextion(debugging, i);
                    Serial.begin(fdata->getBaudrateSerial(debugging));
                    while (!Serial)
                        ;
                    break;
                }
            }
        }
    }
}

void Settings::calibrationSensor(void)
{
    bool button[3];

start:
    hmi->showPage("calib");
    hmi->waitForPageRespon();
    while (true)
    {
        // hmi->serialEvent_2();
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Calibration page");
            return;
        }
        for (int i = 0; i < 3; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    setPoint();
                    break;
                case 1:
                    pointCalibration();
                    break;
                case 2:
                    resetCalibration();
                    break;
                default:
                    break;
                }
                goto start;
            }
        }
    }
}

void Settings::updateSetpointToNextion(uint8_t channel)
{
    bool valid[7];
    char buffer[20];
    uint8_t i = 0;

    for (i = 0; i < 7; i++)
        valid[i] = true;
    for (i = 0; i < 7; i++)
    {
        if (i == 0)
            valid[i] &= ((fdata->getGramCalibrationPoint(channel, i) > 0) && (fdata->getGramCalibrationPoint(channel, i) < fdata->getGramMaximum(channel)));
        else
        {
            if (fdata->getGramCalibrationPoint(channel, i) > 0 || ((fdata->getGramCalibrationPoint(channel, i + 1) > 0) && i < 6))
                valid[i] &= ((fdata->getGramCalibrationPoint(channel, i) > fdata->getGramCalibrationPoint(channel, i - 1)) && (fdata->getGramCalibrationPoint(channel, i) <= fdata->getGramMaximum(channel)));
        }
    }

    for (i = 0; i < 7; i++)
    {
        sprintf(buffer, "b%d.txt", i);
        hmi->setStringToNextion(buffer, utils.floatToString(fdata->getGramCalibrationPoint(channel, i)));
        sprintf(buffer, "b%d.pco", i);
        if (valid[i])
        {
            hmi->setIntegerToNextion(buffer, 0); // set font color to red
        }
        else
        {
            hmi->setIntegerToNextion(buffer, 63488); // set font color to black
        }
    }
}

void Settings::setPoint(void)
{
    bool button[9];
    bool button1[2];
    String newValueStr;
    float newValue = 0;
    uint8_t channel = 1;
    char buffer[20];

start:
    button1[0] = false;
    button1[1] = false;
    hmi->showPage("setpoint");
    hmi->waitForPageRespon();
    hmi->setStringToNextion("t0.txt", utils.integerToString(channel));
    updateSetpointToNextion(channel - 1);

    while (true)
    {
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Setpoint page");
            return;
        }
        for (int i = 0; i < 9; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 7:
                    if (++channel > 6)
                        channel = 6;
                    break;
                case 8:
                    if (--channel < 1)
                        channel = 1;
                    break;
                default:
                    sprintf(buffer, "%f", fdata->getGramCalibrationPoint(channel - 1, i));
                    hmi->showPage("numpad");
                    hmi->waitForPageRespon();
                    hmi->setStringToNextion("num_string.txt", buffer);
                    hmi->flushAvailableButton();
                    while (!button1[0] && !button1[1])
                    {
                        button1[0] = hmi->getDataButton(0);
                        button1[1] = hmi->getDataButton(1);
                    }
                    if (button1[1])
                    {
                        newValueStr = hmi->getDataString(0);
                        newValue = atof(newValueStr.c_str());
                        // Serial.println(String() + "Ch" + channel + " Point " + (i + 1) + " set to " + newValueStr + " grams");
                        fdata->setGramCalibrationPoint(channel - 1, i, newValue);
                    }
                    break;
                }
                goto start;
            }
        }
    }
}

void Settings::updateAdcValueString(uint8_t channel, uint32_t *oldValue)
{
    if (channel == Channel1)
    {
        if (*oldValue != ads->adcRead[ads1][0])
        {
            *oldValue = ads->adcRead[ads1][0];
            hmi->setStringToNextion("t0.txt", ads->adcReadString[ads1][0].c_str());
        }
    }
    else if (channel == Channel2)
    {
        if (*oldValue != ads->adcRead[ads1][1])
        {
            *oldValue = ads->adcRead[ads1][1];
            hmi->setStringToNextion("t1.txt", ads->adcReadString[ads1][1].c_str());
        }
    }
    else if (channel == Channel3)
    {
        if (*oldValue != ads->adcRead[ads2][0])
        {
            *oldValue = ads->adcRead[ads2][0];
            hmi->setStringToNextion("t2.txt", ads->adcReadString[ads2][0].c_str());
        }
    }
    else if (channel == Channel4)
    {
        if (*oldValue != ads->adcRead[ads2][1])
        {
            *oldValue = ads->adcRead[ads2][1];
            hmi->setStringToNextion("t3.txt", ads->adcReadString[ads2][1].c_str());
        }
    }
    else if (channel == Channel5)
    {
        if (*oldValue != ads->adcRead[ads3][0])
        {
            *oldValue = ads->adcRead[ads3][0];
            hmi->setStringToNextion("t4.txt", ads->adcReadString[ads3][0].c_str());
        }
    }
    else if (channel == Channel6)
    {
        if (*oldValue != ads->adcRead[ads3][1])
        {
            *oldValue = ads->adcRead[ads3][1];
            hmi->setStringToNextion("t5.txt", ads->adcReadString[ads3][1].c_str());
        }
    }
}

void Settings::resetCalibration(void)
{
    bool button[8];
    char str[10] = "CH1";

    hmi->showPage("rstcal");
    hmi->waitForPageRespon();

    while (true)
    {
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Settings page");
            return;
        }
        for (int i = 0; i < 8; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    strcpy(str, "CH1");
                    break;
                case 1:
                    strcpy(str, "CH2");
                    break;
                case 2:
                    strcpy(str, "CH3");
                    break;
                case 3:
                    strcpy(str, "CH4");
                    break;
                case 4:
                    strcpy(str, "CH5");
                    break;
                case 5:
                    strcpy(str, "CH6");
                    break;
                default:
                    break;
                }
                if (i < 6)
                {
                    hmi->setVisObjectNextion("q0", true);
                    hmi->setVisObjectNextion("t0", true);
                    hmi->setVisObjectNextion("b6", true);
                    hmi->setVisObjectNextion("b7", true);
                    hmi->setStringToNextion("t0.txt", str);

                    while (true)
                    {
                        if (hmi->getExitPageFlag())
                        {
                            // Serial.println("Exit Settings page");
                            return;
                        }
                        if (hmi->getDataButton(6))
                        {
                            break;
                        }
                        if (hmi->getDataButton(7))
                        {
                            fdata->resetCalibrationData(i);
                            hmi->showSavingBarAnimation(200);
                            break;
                        }
                    }

                    hmi->setVisObjectNextion("t0", false);
                    hmi->setVisObjectNextion("b6", false);
                    hmi->setVisObjectNextion("b7", false);
                    hmi->setVisObjectNextion("q0", false);
                    hmi->flushAvailableButton();
                }
            }
        }
    }
}

void Settings::updatePointCalibParameter(uint8_t channel, uint8_t point)
{
    if (point > 0)
    {
        hmi->setStringToNextion("t0.txt", utils.floatToString(fdata->getGramCalibrationPoint(channel, point - 1)));
    }
    else
    {
        hmi->setStringToNextion("t0.txt", utils.floatToString(static_cast<float>(0)));
    }
    if (fdata->getPointCalibrationStatus(channel, point))
    {
        hmi->setIntegerToNextion("t2.picc", Pointcal_Set_Bkg);
        hmi->setIntegerToNextion("t2.picc2", Pointcal_Set_Prs_Bkg);
    }
    else
    {
        hmi->setIntegerToNextion("t2.picc", Pointcal_Normal_Bkg);
        hmi->setIntegerToNextion("t2.picc2", Pointcal_Prs_Bkg);
    }
}

void Settings::pointCalibration(void)
{
    bool button[6];
    int8_t channelState = 0;
    int8_t pointState = 0;
    uint8_t settingState = 0;
    uint8_t temp = 0;
    char prevStr[20];
    char newStr[20];
    uint32_t temp_adc = 0;

    hmi->showPage("pointcal");
    hmi->waitForPageRespon();

    updatePointCalibParameter(channelState, pointState);
    hmi->setStringToNextion("t5.txt", utils.integerToString(fdata->getAdcCalibrationPoint(channelState, pointState), 10));

    while (true)
    {
        if (settingState)
        {
            if (channelState % 2)
            {
                temp = channelState == 1 ? 0 : channelState == 3 ? 1
                                           : channelState == 5   ? 2
                                                                 : 0;
                strcpy(newStr, ads->adcReadString[temp][1].c_str());
                // newStr = ads->adcReadString[temp][1];
                temp_adc = ads->adcRead[temp][1];
            }
            else
            {
                temp = channelState == 0 ? 0 : channelState == 2 ? 1
                                           : channelState == 4   ? 2
                                                                 : 0;
                strcpy(newStr, ads->adcReadString[temp][0].c_str());
                // newStr = ads->adcReadString[temp][0];
                temp_adc = ads->adcRead[temp][0];
            }
            if (strcmp(newStr, prevStr))
            {
                hmi->setStringToNextion("t5.txt", newStr);
                strcpy(prevStr, newStr);
            }
        }

        for (int i = 0; i < 6; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    if (++channelState >= (MAX_CHANNEL - 1))
                        channelState = (MAX_CHANNEL - 1);
                    hmi->setStringToNextion("t1.txt", utils.integerToString(channelState + 1));
                    // Serial.println(String() + "Channel " + (channelState + 1) + " selected");
                    settingState = 0;
                    break;
                case 1:
                    if (--channelState <= 0)
                        channelState = 0;
                    hmi->setStringToNextion("t1.txt", utils.integerToString(channelState + 1));
                    // Serial.println(String() + "Channel " + (channelState + 1) + " selected");
                    settingState = 0;
                    break;
                case 2:
                    if (++pointState >= (MAX_POINT_CAL - 1))
                        pointState = (MAX_POINT_CAL - 1);
                    hmi->setStringToNextion("t2.txt", utils.integerToString(pointState + 1));
                    // Serial.println(String() + "Point " + (pointState + 1) + " selected");
                    settingState = 0;
                    break;
                case 3:
                    if (--pointState <= 0)
                        pointState = 0;
                    hmi->setStringToNextion("t2.txt", utils.integerToString(pointState + 1));
                    // Serial.println(String() + "Point " + (pointState + 1) + " selected");
                    settingState = 0;
                    break;
                case 4:
                    if (settingState == 0)
                    {
                        settingState = 1;
                        hmi->setIntegerToNextion("b4.picc", Pointcal_Set_Bkg);
                        hmi->setIntegerToNextion("b4.picc2", Pointcal_Set_Prs_Bkg);
                        hmi->setIntegerToNextion("q0.picc", Pointcal_Set_Bkg);
                    }
                    else if (settingState == 1)
                    {
                        settingState = 0;

                        fdata->setAdcCalibrationPoint(channelState, pointState, temp_adc);
                        if (((fdata->getAdcCalibrationPoint(channelState, pointState) > fdata->getAdcCalibrationPoint(channelState, pointState - 1)) && (pointState > 0 && pointState < (MAX_POINT_CAL - 1))) ||
                            ((fdata->getAdcCalibrationPoint(channelState, pointState) > fdata->getAdcCalibrationPoint(channelState, pointState - 1)) && pointState == (MAX_POINT_CAL - 1)) ||
                            ((pointState == 0) && (fdata->getAdcCalibrationPoint(channelState, pointState) > 0)))
                            fdata->setPointCalibrationStatus(channelState, pointState, true);
                        else
                            fdata->setPointCalibrationStatus(channelState, pointState, false);

                        hmi->showSavingBarAnimation(100);

                        hmi->setIntegerToNextion("b4.picc", Pointcal_Normal_Bkg);
                        hmi->setIntegerToNextion("b4.picc2", Pointcal_Prs_Bkg);
                        hmi->setIntegerToNextion("q0.picc", Pointcal_Normal_Bkg);
                    }
                    break;
                case 5:
                    if (fdata->getPointCalibrationStatus(channelState, pointState))
                    {
                        fdata->setPointCalibrationStatus(channelState, pointState, false);
                        hmi->showSavingBarAnimation(100);
                    }
                    break;
                default:
                    break;
                }

                updatePointCalibParameter(channelState, pointState);

                if (i != 4)
                {
                    if (settingState == 0)
                    {
                        hmi->setIntegerToNextion("b4.picc", Pointcal_Normal_Bkg);
                        hmi->setIntegerToNextion("b4.picc2", Pointcal_Prs_Bkg);
                        hmi->setIntegerToNextion("q0.picc", Pointcal_Normal_Bkg);
                    }
                }
                if (i < 4)
                {
                    hmi->setStringToNextion("t5.txt", utils.integerToString(fdata->getAdcCalibrationPoint(channelState, pointState), 10));
                }
            }
        }
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Point Calibration page");
            break;
        }
    }
}

Settings *setting = new (Settings);