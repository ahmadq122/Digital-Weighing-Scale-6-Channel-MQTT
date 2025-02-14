#ifndef __MY_TIME__H__
#define __MY_TIME__H__

#include "RTC/RTCDS1307.h"
#define WIT_OFFSET 9 * 30 * 60  //UTC +9
#define WITA_OFFSET 8 * 30 * 60 //UTC +8
#define WIB_OFFSET 7 * 30 * 60  //UTC +7
#define WIB 0
#define WITA 1
#define WIT 2

class MyTime : RTCDS1307
{
public:
    bool tBegin(void);
    void initTime(void);
    void initOffset(uint8_t timeZone);
    void updateTime(void);
    bool getMyLocalTime(void);
    bool updateRTC_N_NTPTime(void);
    void getDayStr(char *buffer);
    String getDayStr(void);
    void getTimeStr(char *buffer);
    String getTimeStr(void);
    void getDateStr(char *buffer);
    String getDateStr(void);
    void getTimeAndDateStr(char *buffer);
    void getActualTimeInMinute(uint16_t *timeMinute);
    void getActualDate(uint8_t *date, uint8_t *month, uint8_t *year);
    void getRtcTime(int8_t *hour, int8_t *minute, int8_t *second);
    void getRtcDate(int8_t *date, int8_t *month, int8_t *year);
    void setRtcTime(uint8_t hour, uint8_t minute, uint8_t second);
    void setRtcDate(uint8_t date, uint8_t month, uint8_t year);
    bool getNtpEnabled(void);
    const char *ntpServer = "asia.pool.ntp.org";
    long gmtOffset_sec = WIB_OFFSET;
    int daylightOffset_sec = WIB_OFFSET;

private:
};

extern MyTime mtime;

#endif