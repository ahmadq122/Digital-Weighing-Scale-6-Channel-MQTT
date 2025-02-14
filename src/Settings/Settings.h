#ifndef _SETTINGS_H_
#define _SETTINGS_H_

#include "Arduino.h"

class Settings
{
public:
    void mainMenu(void);    

private:
    void timeZone(void);
    void brightness(void);
    void setLimit(void);
    void timeAndDate(void);
    // void batteryCapacity(void);
    void debugMenu(void);
    void calibrationSensor(void);
    void setPoint(void);
    void resetCalibration(void);
    void pointCalibration(void);

    void updateSelectedTimezoneToNextion(void);
    void updateLimitValueToNextion(void);
    void showBaudrateOption(bool type, bool show);
    void updateSelectedBaudrateToNextion(bool type, uint8_t selected);
    void updateSetpointToNextion(uint8_t channel);
    void updateAdcValueString(uint8_t channel, uint32_t *oldValue);
    void updatePointCalibParameter(uint8_t channel, uint8_t point);
};

extern Settings* setting;

#endif