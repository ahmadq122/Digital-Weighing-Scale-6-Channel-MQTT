#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

#include "RTOS.h"
#include "Nextion/Nextion.h"
#include "FlashMemory/FlashMemory.h"
#include "ADC/ADS1232.h"
#include "Datalogger/Datalogger.h"
#include "PinMap.h"
// #include "PublisherSubscriber/PublisherSubscriber.h"

#define ESP_Analog_Voltage_Refrence 3.3
// #define Minimum_Battery_Voltage 7.00
// #define Maximum_Battery_Voltage 8.40 //2 cells 3.7V Serial
#define Resistor_One_VoltDiv 47000 // Connected to Battery(+)
#define Resistor_Two_VoltDiv 22000 // Connected to GND

// Define the tasks
TaskHandle_t task_01_c1_handle = NULL;
TaskHandle_t task_02_c1_handle = NULL;
TaskHandle_t task_03_c1_handle = NULL;
TaskHandle_t task_04_c1_handle = NULL;
TaskHandle_t task_05_c1_handle = NULL;
TaskHandle_t task_06_c1_handle = NULL;

TaskHandle_t task_01_c0_handle = NULL;
TaskHandle_t task_02_c0_handle = NULL;
TaskHandle_t task_03_c0_handle = NULL;

void task_01_c1(void *pvParameters);
void task_02_c1(void *pvParameters);
void task_03_c1(void *pvParameters); // ADS Board 1
void task_04_c1(void *pvParameters); // ADS Board 2
void task_05_c1(void *pvParameters); // ADS Board 3
void task_06_c1(void *pvParameters); // Publisher

void task_01_c0(void *pvParameters); // battery volt measurement
void task_02_c0(void *pvParameters); // task management

// the setup function runs once when you press reset or power the board
void RealTimeOS::setup(void)
{
    // Now set up two tasks to run independently.
    xTaskCreatePinnedToCore(
        task_01_c1,
        "task_01", // A name just for humans
        1024,      // This stack size can be checked & adjusted by reading the Stack Highwater
        NULL,
        configMAX_PRIORITIES - 1, // Priority, with 3 (configMAX_PRIORITIES - 1) being the highest, and 0 being the lowest.
        &task_01_c1_handle,
        ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
        task_02_c1,
        "task_02_c1",
        1536, // Stack size
        NULL,
        configMAX_PRIORITIES - 2, // Priority
        &task_02_c1_handle,
        ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
        task_03_c1,
        "task_03_c1",
        1024 * 2, // Stack size
        NULL,
        configMAX_PRIORITIES - 4, // Priority
        &task_03_c1_handle,
        ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
        task_04_c1,
        "task_04_c1",
        1024 * 2, // Stack size
        NULL,
        configMAX_PRIORITIES - 5, // Priority
        &task_04_c1_handle,
        ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
        task_05_c1,
        "task_05_c1",
        1024 * 2, // Stack size
        NULL,
        configMAX_PRIORITIES - 6, // Priority
        &task_05_c1_handle,
        ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
        task_06_c1,
        "task_06_c1",
        1024 * 4, // Stack size
        NULL,
        configMAX_PRIORITIES - 7, // Priority
        &task_06_c1_handle,
        ARDUINO_RUNNING_CORE);

    xTaskCreatePinnedToCore(
        task_01_c0,
        "task_01_c0",
        1024 * 2, // Stack size
        NULL,
        configMAX_PRIORITIES - 1, // Priority
        &task_01_c0_handle,
        0);

    xTaskCreatePinnedToCore(
        task_02_c0,
        "task_02_c0",
        1024, // Stack size
        NULL,
        configMAX_PRIORITIES - 3, // Priority
        &task_02_c0_handle,
        0);
}

/*--------------------------------------------------*/
/*---------------------- Tasks ---------------------*/
/*--------------------------------------------------*/

void task_01_c1(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    for (;;) // A Task shall never return or exit.
    {
        if (++rtos->counterUpSeconds == 0xFFFFFFFFFF)
            rtos->counterUpSeconds = 0;

        if (rtos->counterDownSeconds)
            rtos->counterDownSeconds--;
        if (rtos->counterDownSecondsBattLow)
            rtos->counterDownSecondsBattLow--;

        if (rtos->counterDownSecondsLog[serial])
            rtos->counterDownSecondsLog[serial]--;
        if (rtos->counterDownSecondsLog[local])
            rtos->counterDownSecondsLog[local]--;
        if (rtos->counterDownSecondsLog[remote])
            rtos->counterDownSecondsLog[remote]--;

        if (++rtos->interruptSeconds > 59)
        {
            rtos->minuteTriggered = true;
            rtos->interruptSeconds = 0;
        }

        if (rtos->interruptSeconds % 5 == 0 && !rtos->wifiConnectionTriggered)
            rtos->wifiConnectionTriggered = true;

        for (uint8_t i = 0; i < 10; i++)
        {
            rtos->secondTriggered[i] = 1;
        }

        if (fdata->getDimScreenTimer() > 0)
        {
            if (rtos->dimmCounterDownSecond)
                rtos->dimmCounterDownSecond--;
            else
            {
                if (rtos->currentBrightness > Auto_Dim_Brightness)
                {
                    rtos->currentBrightness = Auto_Dim_Brightness;
                    hmi->setIntegerToNextion("dim", rtos->currentBrightness);
                }
            }
        }

        rtos->secondBlink = !rtos->secondBlink;
        // Serial.println("Task is running!");
        delay(1000); // Delay for 1 second
    }
}

void task_02_c1(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    for (;;) // A Task shall never return or exit.
    {
        hmi->serialEvent_2();
        delay(50); // Delay for 1 second
    }
}

void task_03_c1(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    bool channel = false;
    uint8_t counter = 0;
    uint8_t board = ads1;

    if (ads->init(board))
    {
        ads->isAvailable[board] = true;
        for (;;) // A Task shall never return or exit.
        {
            if (fdata->getChannelEnDisStatus(channel))
            {
                if (ads->dataRead(board, channel, 1))
                {
                    if (++counter > 1)
                    {
                        counter = 0;
                        if (fdata->getChannelEnDisStatus(!channel))
                            channel = !channel;
                    }
                }
                delay(20);
            }
            else
            {
                if (fdata->getChannelEnDisStatus(!channel))
                    channel = !channel;
                delay(1000);
            }
        }
    }
    else
    {
        for (;;)
        {
            // Serial.println("Do Nothing1!");
            delay(10000);
            // do noting
        }
    }
}

void task_04_c1(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    bool channel = false;
    uint8_t counter = 0;
    uint8_t board = ads2;

    if (ads->init(board))
    {
        ads->isAvailable[board] = true;
        for (;;) // A Task shall never return or exit.
        {
            if (fdata->getChannelEnDisStatus(2 + channel))
            {
                if (ads->dataRead(board, channel, 1))
                {
                    if (++counter > 2)
                    {
                        counter = 0;
                        if (fdata->getChannelEnDisStatus(2 + !channel))
                            channel = !channel;
                    }
                }
                delay(20);
            }
            else
            {
                if (fdata->getChannelEnDisStatus(!channel))
                    channel = !channel;
                delay(1000);
            }
        }
    }
    else
    {
        for (;;)
        {
            // Serial.println("Do Nothing2!");
            delay(10000);
            // do noting
        }
    }
}
void task_05_c1(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    bool channel = false;
    uint8_t counter = 0;
    uint8_t board = ads3;

    if (ads->init(board))
    {
        ads->isAvailable[board] = true;
        for (;;) // A Task shall never return or exit.
        {
            if (fdata->getChannelEnDisStatus(4 + channel))
            {
                if (ads->dataRead(board, channel, 1))
                {
                    if (++counter > 1)
                    {
                        counter = 0;
                        if (fdata->getChannelEnDisStatus(4 + !channel))
                            channel = !channel;
                    }
                }
                delay(20);
            }
            else
            {
                if (fdata->getChannelEnDisStatus(!channel))
                    channel = !channel;
                delay(1000);
            }
        }
    }
    else
    {
        for (;;)
        {
            // Serial.println("Do Nothing3!");
            delay(10000);
            // do noting
        }
    }
}

void task_06_c1(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    for (;;) // A Task shall never return or exit.
    {
        if (rtos->remoteLogTriggered)
        {
            // Serial.println("Remote triggered! " + String(fdata->getChannelEnDisStatus(), 2));
            logger->remoteLogging(fdata->getChannelEnDisStatus());
            rtos->remoteLogTriggered = false;
        }
        delay(1000); // Delay for 1 second
    }
}

void task_01_c0(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    uint16_t adcBatteryContainer[ADCsample];
    uint8_t index = 0;

    for (;;) // A Task shall never return or exit.
    {
        float adcBattery = 0;
        float percent = 0.0;
        float voltageDivider = 0.0;
        float voltageActual = 0.0;
        float attenuation = 0.0;
        float min = fdata->getMinimumBattery();
        float max = fdata->getMaximumBattery();

        attenuation = 0.3188; //(Resistor_Two_VoltDiv / (Resistor_One_VoltDiv + Resistor_Two_VoltDiv));

        // USE MOVING AVERAGE TERM
        uint16_t adc = analogRead(Pin_VBat_Sense);
        if (index < ADCsample)
        {
            adcBatteryContainer[index] = adc;
            index++;
        }
        else
        {
            for (uint8_t i = 0; i < (ADCsample - 1); i++)
            {
                adcBatteryContainer[i] = adcBatteryContainer[i + 1];
            }
            adcBatteryContainer[ADCsample - 1] = adc;

            for (uint8_t i = 0; i < ADCsample; i++)
            {
                adcBattery += adcBatteryContainer[i];
            }

            adcBattery /= ADCsample;
            voltageDivider = (adcBattery / 4095.0) * ESP_Analog_Voltage_Refrence;

            if (adcBattery > 10)
            {
                if (fdata->getDebugMode())
                    voltageDivider += 0.115; // correction
                else
                    voltageDivider += 0.175; // correction
            }

            voltageActual = voltageDivider / attenuation;
            rtos->vBatActual = voltageActual;

            percent = ((constrain((voltageActual - min), 0.0, (max - min))) / (max - min)) * 100.0;

            // Serial.println(String() + "---------------------------");
            // Serial.println(String() + "Attenuation : " + attenuation);
            // Serial.println(String() + "Current ADC : " + adc);
            // Serial.printf("ADC Container: ");
            // for (uint8_t i = 0; i < ADCsample; i++)
            // {
            //     Serial.printf(" [%d:%d] ", i, adcBatteryContainer[i]);
            // }
            // Serial.println();
            // Serial.println(String() + "Voltage Actual : " + voltageActual + "V");
            // Serial.println(String() + "Voltage Divider : " + voltageDivider + "V");
            // Serial.println(String() + "Battey Percent : " + percent + "%");
            // Serial.println(String() + "---------------------------");

            rtos->batteryPercent = (uint8_t)percent;
            rtos->batteryInitiated = true;

            if (rtos->batteryPercent <= 5)
                rtos->powerOffFlag = 1;
        }

        delay(1000); // Delay for 1 second
    }
}
void task_02_c0(void *pvParameters) // This is a task.
{
    (void)pvParameters;

    // bool taskSuspended = false;

    for (;;) // A Task shall never return or exit.
    {
        if (rtos->powerOffFlag)
        {
            if (rtos->powerOffFlag == 1)
            {
                delay(30000);
                if (rtos->batteryPercent > 5)
                {
                    rtos->powerOffFlag = 0;
                    continue;
                }
            }
            hmi->showPage("off");
            hmi->waitForPageRespon();
            delay(5000);
            hmi->showPage("stb");
            hmi->waitForPageRespon();

            // if (!taskSuspended)
            // {
            vTaskDelete(task_01_c1_handle);
            vTaskDelete(task_02_c1_handle);
            vTaskDelete(task_03_c1_handle);
            vTaskDelete(task_04_c1_handle);
            vTaskDelete(task_05_c1_handle);
            vTaskDelete(task_06_c1_handle);
            vTaskDelete(task_01_c0_handle);
            vTaskDelete(task_02_c0_handle);
            vTaskDelete(task_03_c0_handle);
            //     taskSuspended = true;
            // }
            delay(100);
            esp_deep_sleep_start();
        }
        // else
        // {
        // if (taskSuspended)
        // {
        // unused
        // vTaskStartScheduler();
        // vTaskResume(task_01_c1_handle);
        // vTaskResume(task_02_c1_handle);
        // vTaskResume(task_03_c0_handle);
        // vTaskResume(task_03_c1_handle);
        // vTaskResume(task_04_c1_handle);
        // vTaskResume(task_05_c1_handle);
        // vTaskResume(task_06_c1_handle);
        // vTaskResume(task_01_c0_handle);
        // vTaskSuspend(task_02_c0_handle);
        //     taskSuspended = false;
        // }
        // }
        // if(taskSuspended){
        // Serial.println("Task is running!");
        // }
        delay(1000); // Delay for 1 second
    }
}

void RealTimeOS::updateStartProgressBar(uint8_t add)
{
    startProgressBar += add;
    startProgressBar = constrain(startProgressBar, 0, 100);
    hmi->setIntegerToNextion("init.val", startProgressBar);
}

RealTimeOS *rtos = new (RealTimeOS);