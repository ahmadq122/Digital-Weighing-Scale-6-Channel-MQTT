#ifndef __RTOS__H__
#define __RTOS__H__

#include "Arduino.h"
#define Auto_Dim_Brightness 5

#define ADCsample 10
#define Timer_Second_Battery_Low 60

class RealTimeOS
{
public:
    // uint64_t milliSeconds = 0;
    uint32_t counterUpSeconds = 0;
    uint32_t counterDownSeconds = 0;
    uint32_t counterDownSecondsBattLow = 0;
    uint32_t counterDownSecondsLog[3] = {0};
    uint32_t interruptSeconds = 0;
    uint16_t dimmCounterDownSecond = 30;
    uint8_t currentBrightness = 100;
    bool remoteLogTriggered[6] = {false};
    bool secondBlink = false;
    bool secondTriggered[10] = {false};
    bool minuteTriggered = {false};
    bool wifiConnectionTriggered = {false};
    bool wifiConnected = false;
    bool initTimeState = true;
    bool syncroneRTC = false; // syncronize RTC data with ntp at the first time
    uint8_t startProgressBar = 0;
    uint8_t batteryPercent = 0;
    float vBatActual = 0.0;
    bool batteryInitiated = false;
    uint8_t powerOffFlag = 0; // 1: power off by battery low, 2: power off by request
    void setup(void);
    void updateStartProgressBar(uint8_t add);

private:
};

extern RealTimeOS *rtos;
extern TaskHandle_t task_01_c1_handle;
extern TaskHandle_t task_02_c1_handle;
// extern TaskHandle_t task_03_c1_handle;
extern TaskHandle_t task_04_c1_handle;
extern TaskHandle_t task_05_c1_handle;
extern TaskHandle_t task_06_c1_handle;
extern TaskHandle_t task_07_c1_handle;

extern TaskHandle_t task_01_c0_handle;
extern TaskHandle_t task_02_c0_handle;

#endif