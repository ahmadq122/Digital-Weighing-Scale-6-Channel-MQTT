#include "Datalogger.h"
#include "FlashMemory/FlashMemory.h"
#include "Nextion/Nextion.h"
#include "ADC/ADS1232.h"
#include "RTOS/RTOS.h"
#include "Time/MyTime.h"
#include <HTTPClient.h>
#include "Utility/Utility.h"
#include "PictureListID.h"
#include "MicroSD/MicroSD.h"

void Datalogger::showObjDatalogPage(uint8_t loggerType, bool show)
{
    if (loggerType == serial)
    {
        hmi->setVisObjectNextion("q3", show);
        hmi->setVisObjectNextion("q4", show);
    }
    if (loggerType != local)
        hmi->setVisObjectNextion("b1", show);
    hmi->setVisObjectNextion("b2", show);
    hmi->setVisObjectNextion("b3", show);
    hmi->setVisObjectNextion("b5", show);
    hmi->setVisObjectNextion("b7", show);
    hmi->setVisObjectNextion("t0", show);
    hmi->setVisObjectNextion("q0", show);
    hmi->setVisObjectNextion("t1", show);
    hmi->setVisObjectNextion("q1", show);
    hmi->setVisObjectNextion("t2", show);
    hmi->setVisObjectNextion("b4", show);
    hmi->setVisObjectNextion("b6", show);
    hmi->setVisObjectNextion("b8", show);
    hmi->setVisObjectNextion("b9", show);
}

void Datalogger::updateStrPeriod(uint8_t hourPeriod, uint8_t minutePeriod, uint8_t secondPeriod)
{
    char strHour[3];
    char strMinute[3];
    char strSecond[3];

    utils.integerToString(hourPeriod, strHour, 2);
    utils.integerToString(minutePeriod, strMinute, 2);
    utils.integerToString(secondPeriod, strSecond, 2);

    hmi->setStringToNextion("t0.txt", strHour);
    hmi->setStringToNextion("t1.txt", strMinute);
    hmi->setStringToNextion("t2.txt", strSecond);
}

uint8_t Datalogger::setting(uint8_t loggerType)
{
    uint32_t period = 0;
    bool button[20];
    uint8_t btn = 0;
    bool baudrateSetState = false;
    bool enDis = false;
    int8_t hourPeriod = 0;
    int8_t minutePeriod = 0;
    int8_t secondPeriod = 0;

    enDis = fdata->getDatalogStatus(loggerType);
    period = fdata->getPeriodDatalog(loggerType);
    hourPeriod = period / 3600;
    minutePeriod = (period - (hourPeriod * 3600)) / 60;
    secondPeriod = period - ((hourPeriod * 3600) + (minutePeriod * 60));
    // __start:
    if (loggerType == serial)
    {
        hmi->showPage("serial");
    }
    else if (loggerType == local)
    {
        hmi->showPage("local");
        if (!sdcard->cardMounted)
        {
            enDis = false;
            fdata->setDatalogStatus(loggerType, enDis);
        }
    }
    else if (loggerType == remote)
    {
        hmi->showPage("remote");
    }
    hmi->waitForPageRespon();

    if (loggerType == serial)
    {
        hmi->setStringToNextion("b1.txt", String() + fdata->getBaudrateSerial(logging));
    }
    hmi->setIntegerToNextion("b0.val", enDis);
    hmi->setIntegerToNextion("q2.picc", enDis ? Datalog_Serial_Prs_Bkg : Datalog_Serial_Normal_Bkg);
    showObjDatalogPage(loggerType, enDis);
    updateStrPeriod(hourPeriod, minutePeriod, secondPeriod);

    if (loggerType == serial)
    {
        // Serial.println("Datalog Serial page opened");
    }
    else if (loggerType == local)
    {
        // Serial.println("Datalog Local page opened");
    }
    else if (loggerType == remote)
    {
        // Serial.println("Datalog Remote page opened");
    }

    while (true)
    {
        for (uint8_t i = 0; i < 10; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    enDis = !enDis;
                    hmi->setIntegerToNextion("b0.val", enDis);
                    if (enDis)
                    {
                        hmi->setIntegerToNextion("q2.picc", Datalog_Serial_Prs_Bkg);
                        if (loggerType == local)
                        {
                            if (!sdcard->cardMounted)
                            {
                                sdcard->setup();
                                hmi->flushAvailableSerial();
                            }
                            if (sdcard->cardMounted)
                            {
                                sdcard->updateCsvFileName();
                            }
                            else
                            {
                                enDis = false;
                                hmi->setIntegerToNextion("b0.val", enDis);
                            }
                        }
                    }
                    else
                    {
                        if (loggerType == local)
                            sdcard->unmount();
                        hmi->setIntegerToNextion("q2.picc", Datalog_Serial_Normal_Bkg);
                    }
                    fdata->setDatalogStatus(loggerType, enDis);
                    showObjDatalogPage(loggerType, enDis);
                    break;
                case 1:
                    if (loggerType == serial)
                    {
                        showBaudrateOption(logging, true);
                        updateSelectedBaudrateToNextion(logging, fdata->getBaudrateSerialIndex(logging));
                        baudrateSetState = true;
                        while (baudrateSetState)
                        {
                            for (uint8_t i = 10; i < 20; i++)
                            {
                                button[i] = hmi->getDataButton(i);
                                if (button[i])
                                {
                                    fdata->setBaudrateSerial(logging, i - 10);
                                    baudrateSetState = false;
                                }
                                if (!baudrateSetState)
                                    continue;
                            }
                        }
                        hmi->setStringToNextion("b1.txt", String() + fdata->getBaudrateSerial(logging));
                        updateSelectedBaudrateToNextion(logging, fdata->getBaudrateSerialIndex(logging));
                        delay(1500);
                        hmi->showSavingBarAnimation(200);
                        showBaudrateOption(logging, false);
                        hmi->flushAvailableButton();
                    }
                    else if (loggerType == remote)
                    {
                        hmi->showPage("keyboard");
                        hmi->waitForPageRespon();
                        hmi->setStringToNextion("kb_string.txt", fdata->getKeyAPI());
                        btn = 0;
                        while (!hmi->checkAnyButtonPressed(&btn))
                        {
                        }
                        if (hmi->getDataButton(1))
                            fdata->setKeyAPI(hmi->getDataString(0));
                        return 0;
                        // goto __start;
                    }
                    break;
                case 2:
                    hmi->showPage("scheduler");
                    hmi->waitForPageRespon();
                    // Serial.println("Scheduler page opened");
                    scheduler(loggerType);
                    // goto __start;
                    return 0;
                    break;
                case 3:
                    if (++hourPeriod > 23)
                        hourPeriod = 0;
                    break;
                case 4:
                    if (--hourPeriod < 0)
                        hourPeriod = 23;
                    break;
                case 5:
                    if (++minutePeriod > 59)
                        minutePeriod = 0;
                    break;
                case 6:
                    if (--minutePeriod < 0)
                        minutePeriod = 59;
                    break;
                case 7:
                    if (++secondPeriod > 59)
                        secondPeriod = 0;
                    break;
                case 8:
                    if (--secondPeriod < 0)
                        secondPeriod = 59;
                    break;
                case 9:
                    if (fdata->setPeriodDatalog(loggerType, ((hourPeriod * 3600) + (minutePeriod * 60) + secondPeriod)))
                    {
                        hmi->showSavingBarAnimation(200);
                    }
                    hmi->flushAvailableButton();
                    break;
                default:
                    break;
                }
                if (i >= 3 && i <= 8)
                {
                    updateStrPeriod(hourPeriod, minutePeriod, secondPeriod);
                }
            }
        }
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Datalog page");
            return 1;
            // break;
        }
    }
    return 0; // looping
}

void Datalogger::updateSchedulerSettingState(uint8_t settingState)
{
    for (uint8_t j = 0; j < 6; j++)
    {
        if (j == settingState)
            hmi->setIntegerToNextion(String() + "b" + j + ".pco", color_cyan);
        else
            hmi->setIntegerToNextion(String() + "b" + j + ".pco", color_white);
    }
}

void Datalogger::updateStrOfSetSchedule(uint8_t hourSchedule, uint8_t minuteSchedule)
{
    char strHour[3];
    char strMinute[3];

    utils.integerToString(hourSchedule, strHour, 2);
    utils.integerToString(minuteSchedule, strMinute, 2);

    hmi->setStringToNextion("t0.txt", strHour);
    hmi->setStringToNextion("t1.txt", strMinute);
}

void Datalogger::scheduler(uint8_t loggerType)
{
    bool button[4];
    bool timeSchedulerActive = false;
    bool dateSchedulerActive = false;

    hmi->showPage("scheduler");
    hmi->waitForPageRespon();

    while (true)
    {
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Scheduler page");
            return;
        }

        for (uint8_t i = 0; i < 4; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    timeScheduler(loggerType);
                    break;
                case 1:
                    dateScheduler(loggerType);
                    break;
                case 2:
                    timeSchedulerActive = !timeSchedulerActive;
                    if (timeSchedulerActive)
                    {
                        hmi->setIntegerToNextion("b0.picc", Scheduler_Menu_Selected_Normal_Btn);
                        hmi->setIntegerToNextion("b0.picc2", Scheduler_Menu_Selected_Prs_Btn);
                    }
                    else
                    {
                        hmi->setIntegerToNextion("b0.picc", Scheduler_Menu_Normal_Btn);
                        hmi->setIntegerToNextion("b0.picc2", Scheduler_Menu_Prs_Btn);
                    }
                    break;
                case 3:
                    dateSchedulerActive = !dateSchedulerActive;
                    if (dateSchedulerActive)
                    {
                        hmi->setIntegerToNextion("b1.picc", Scheduler_Menu_Selected_Normal_Btn);
                        hmi->setIntegerToNextion("b1.picc2", Scheduler_Menu_Selected_Prs_Btn);
                    }
                    else
                    {
                        hmi->setIntegerToNextion("b1.picc", Scheduler_Menu_Normal_Btn);
                        hmi->setIntegerToNextion("b1.picc2", Scheduler_Menu_Prs_Btn);
                    }
                    break;
                default:
                    break;
                }
                if (i == 0 || i == 1)
                {
                    hmi->showPage("scheduler");
                    hmi->waitForPageRespon();
                }
            }
        }
    }
}

void Datalogger::updateTimeScheduler(uint8_t loggerType)
{
    uint8_t hour[4];
    uint8_t minute[4];
    bool enable[4];

    fdata->getTimeSchedulerDatalog(_on_, loggerType, 0, &hour[0], &minute[0]);
    fdata->getTimeSchedulerDatalog(_on_, loggerType, 1, &hour[1], &minute[1]);
    fdata->getTimeSchedulerDatalog(_off_, loggerType, 0, &hour[2], &minute[2]);
    fdata->getTimeSchedulerDatalog(_off_, loggerType, 1, &hour[3], &minute[3]);

    enable[0] = fdata->getEnableTimeScheduler(_on_, loggerType, 0);
    enable[1] = fdata->getEnableTimeScheduler(_on_, loggerType, 1);
    enable[2] = fdata->getEnableTimeScheduler(_off_, loggerType, 0);
    enable[3] = fdata->getEnableTimeScheduler(_off_, loggerType, 1);

    hmi->setStringToNextion("t0.txt", (String() + utils.integerToString(hour[0], 2) + ":" + utils.integerToString(minute[0], 2)));
    hmi->setStringToNextion("t1.txt", (String() + utils.integerToString(hour[1], 2) + ":" + utils.integerToString(minute[1], 2)));
    hmi->setStringToNextion("t2.txt", (String() + utils.integerToString(hour[2], 2) + ":" + utils.integerToString(minute[2], 2)));
    hmi->setStringToNextion("t3.txt", (String() + utils.integerToString(hour[3], 2) + ":" + utils.integerToString(minute[3], 2)));
    hmi->setStringToNextion("t4.txt", utils.integerToString(hour[0], 2));
    hmi->setStringToNextion("t5.txt", utils.integerToString(minute[0], 2));
    hmi->setIntegerToNextion("bt0.val", enable[0]);
    hmi->setIntegerToNextion("bt1.val", enable[1]);
    hmi->setIntegerToNextion("bt2.val", enable[2]);
    hmi->setIntegerToNextion("bt3.val", enable[3]);
}

void Datalogger::updateSelectedTimeScheduler(uint8_t loggerType, uint8_t optSelected, uint8_t *dataHour, uint8_t *dataMinute)
{
    char hourSelectedStr[3];
    char minuteSelectedStr[3];
    char str[6];
    uint8_t hour[4];
    uint8_t minute[4];

    switch (optSelected)
    {
    case 0:
        fdata->getTimeSchedulerDatalog(_on_, loggerType, 0, &hour[0], &minute[0]);
        utils.integerToString(hour[0], hourSelectedStr, 2);
        utils.integerToString(minute[0], minuteSelectedStr, 2);
        break;
    case 1:
        fdata->getTimeSchedulerDatalog(_on_, loggerType, 1, &hour[1], &minute[1]);
        utils.integerToString(hour[1], hourSelectedStr, 2);
        utils.integerToString(minute[1], minuteSelectedStr, 2);
        break;
    case 2:
        fdata->getTimeSchedulerDatalog(_off_, loggerType, 0, &hour[2], &minute[2]);
        utils.integerToString(hour[2], hourSelectedStr, 2);
        utils.integerToString(minute[2], minuteSelectedStr, 2);
        break;
    case 3:
        fdata->getTimeSchedulerDatalog(_off_, loggerType, 1, &hour[3], &minute[3]);
        utils.integerToString(hour[3], hourSelectedStr, 2);
        utils.integerToString(minute[3], minuteSelectedStr, 2);
        break;
    default:
        strcpy(hourSelectedStr, "00");
        strcpy(minuteSelectedStr, "00");
        break;
    }
    *dataHour = hour[optSelected];
    *dataMinute = minute[optSelected];
    strcpy(str, hourSelectedStr);
    strcat(str, ":");
    strcat(str, minuteSelectedStr);

    hmi->setStringToNextion(String() + "t" + optSelected + ".txt", str);
    hmi->setStringToNextion("t4.txt", hourSelectedStr);
    hmi->setStringToNextion("t5.txt", minuteSelectedStr);
    for (uint8_t i = 0; i < 4; i++)
        hmi->setIntegerToNextion(String() + "t" + i + ".pco", (i == optSelected) ? color_cyan : color_white);
}

void Datalogger::timeScheduler(uint8_t loggerType)
{
    bool button[13];
    uint8_t minute = 0;
    uint8_t hour = 0;
    uint8_t optSelected = 0;
    bool enable[4];

    hmi->showPage("tsched");
    hmi->waitForPageRespon();

    updateTimeScheduler(loggerType);
    updateSelectedTimeScheduler(loggerType, optSelected, &hour, &minute);
    // fdata->getTimeSchedulerDatalog(_on_, loggerType, 0, &hour, &minute);
    enable[0] = fdata->getEnableTimeScheduler(_on_, loggerType, 0);
    enable[1] = fdata->getEnableTimeScheduler(_on_, loggerType, 1);
    enable[2] = fdata->getEnableTimeScheduler(_off_, loggerType, 0);
    enable[3] = fdata->getEnableTimeScheduler(_off_, loggerType, 1);

    while (true)
    {
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Time Scheduler page");
            break;
        }
        for (uint8_t i = 0; i < 13; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    if (++hour > 23)
                        hour = 0;
                    hmi->setStringToNextion("t4.txt", utils.integerToString(hour, 2));

                    break;
                case 1:
                    if (hour > 0)
                        hour--;
                    else
                        hour = 23;
                    hmi->setStringToNextion("t4.txt", utils.integerToString(hour, 2));
                    break;
                case 2:
                    if (++minute > 59)
                        minute = 0;
                    hmi->setStringToNextion("t5.txt", utils.integerToString(minute, 2));
                    break;
                case 3:
                    if (minute > 0)
                        minute--;
                    else
                        minute = 59;
                    hmi->setStringToNextion("t5.txt", utils.integerToString(minute, 2));
                    break;
                case 4:
                    if (optSelected == 0)
                        fdata->setTimeSchedulerDatalog(_on_, loggerType, 0, ((hour * 60) + minute));
                    else if (optSelected == 1)
                        fdata->setTimeSchedulerDatalog(_on_, loggerType, 1, ((hour * 60) + minute));
                    else if (optSelected == 2)
                        fdata->setTimeSchedulerDatalog(_off_, loggerType, 0, ((hour * 60) + minute));
                    else if (optSelected == 3)
                        fdata->setTimeSchedulerDatalog(_off_, loggerType, 1, ((hour * 60) + minute));
                    hmi->showSavingBarAnimation(200);
                    break;
                case 5:
                    optSelected = 0;
                    break;
                case 6:
                    optSelected = 1;
                    break;
                case 7:
                    optSelected = 2;
                    break;
                case 8:
                    optSelected = 3;
                    break;
                case 9:
                    enable[0] = !enable[0];
                    if (fdata->setEnableTimeScheduler(_on_, loggerType, 0, enable[0]))
                    {
                        hmi->showSavingBarAnimation(100);
                        hmi->setIntegerToNextion("bt0.val", enable[0]);
                    }
                    break;
                case 10:
                    enable[1] = !enable[1];
                    if (fdata->setEnableTimeScheduler(_on_, loggerType, 1, enable[1]))
                    {
                        hmi->showSavingBarAnimation(100);
                        hmi->setIntegerToNextion("bt1.val", enable[1]);
                    }
                    break;
                case 11:
                    enable[2] = !enable[2];
                    if (fdata->setEnableTimeScheduler(_off_, loggerType, 0, enable[2]))
                    {
                        hmi->showSavingBarAnimation(100);
                        hmi->setIntegerToNextion("bt2.val", enable[2]);
                    }
                    break;
                case 12:
                    enable[3] = !enable[3];
                    if (fdata->setEnableTimeScheduler(_off_, loggerType, 1, enable[3]))
                    {
                        hmi->showSavingBarAnimation(100);
                        hmi->setIntegerToNextion("bt3.val", enable[3]);
                    }
                    break;
                default:
                    break;
                }
                if (i >= 4 && i <= 8)
                {
                    updateSelectedTimeScheduler(loggerType, optSelected, &hour, &minute);
                    // hmi->setStringToNextion("t4.txt", utils.integerToString(hour, 2));
                    // hmi->setStringToNextion("t5.txt", utils.integerToString(minute, 2));
                }
            }
        }
    }
}

void Datalogger::updateDateScheduler(uint8_t loggerType)
{
    uint8_t date[2];
    uint8_t month[2];
    uint8_t year[2];
    bool enable[2];

    fdata->getDateSchedulerDatalog(_on_, loggerType, &date[0], &month[0], &year[0]);
    fdata->getDateSchedulerDatalog(_off_, loggerType, &date[1], &month[1], &year[1]);

    enable[0] = fdata->getEnableDateScheduler(_on_, loggerType);
    enable[1] = fdata->getEnableDateScheduler(_off_, loggerType);

    hmi->setStringToNextion("t0.txt", (String() + utils.integerToString(date[0], 2) + "/" + utils.integerToString(month[0], 2) + "/" + utils.integerToString(year[0], 2)));
    hmi->setStringToNextion("t1.txt", (String() + utils.integerToString(date[1], 2) + "/" + utils.integerToString(month[0], 2) + "/" + utils.integerToString(year[1], 2)));
    hmi->setStringToNextion("t2.txt", utils.integerToString(date[0], 2));
    hmi->setStringToNextion("t3.txt", utils.integerToString(month[0], 2));
    hmi->setStringToNextion("t4.txt", utils.integerToString(year[0], 2));
    hmi->setIntegerToNextion("bt0.val", enable[0]);
    hmi->setIntegerToNextion("bt1.val", enable[1]);
}

void Datalogger::updateSelectedDateScheduler(uint8_t loggerType, uint8_t optSelected, uint8_t *dataDate, uint8_t *dataMonth, uint8_t *dataYear)
{
    char dateSelectedStr[3];
    char monthSelectedStr[3];
    char yearSelectedStr[3];
    char str[9];
    uint8_t date[2];
    uint8_t month[2];
    uint8_t year[2];

    switch (optSelected)
    {
    case 0:
        fdata->getDateSchedulerDatalog(_on_, loggerType, &date[0], &month[0], &year[0]);
        utils.integerToString(date[0], dateSelectedStr, 2);
        utils.integerToString(month[0], monthSelectedStr, 2);
        utils.integerToString(year[0], yearSelectedStr, 2);
        break;
    case 1:
        fdata->getDateSchedulerDatalog(_off_, loggerType, &date[1], &month[1], &year[1]);
        utils.integerToString(date[1], dateSelectedStr, 2);
        utils.integerToString(month[1], monthSelectedStr, 2);
        utils.integerToString(year[1], yearSelectedStr, 2);
        break;
    default:
        strcpy(dateSelectedStr, "01");
        strcpy(monthSelectedStr, "01");
        strcpy(yearSelectedStr, "21");
        break;
    }
    *dataDate = date[optSelected];
    *dataMonth = month[optSelected];
    *dataYear = year[optSelected];
    strcpy(str, dateSelectedStr);
    strcat(str, "/");
    strcat(str, monthSelectedStr);
    strcat(str, "/");
    strcat(str, yearSelectedStr);

    hmi->setStringToNextion(String() + "t" + optSelected + ".txt", str);
    hmi->setStringToNextion("t2.txt", dateSelectedStr);
    hmi->setStringToNextion("t3.txt", monthSelectedStr);
    hmi->setStringToNextion("t4.txt", yearSelectedStr);
    for (uint8_t i = 0; i < 2; i++)
        hmi->setIntegerToNextion(String() + "t" + i + ".pco", (i == optSelected) ? color_cyan : color_white);
}

void Datalogger::dateScheduler(uint8_t loggerType)
{
    bool button[11];
    uint8_t date;
    uint8_t month;
    uint8_t year;
    bool enable[2];
    bool optSelected = false;

    hmi->showPage("dsched");
    hmi->waitForPageRespon();

    updateDateScheduler(loggerType);
    updateSelectedDateScheduler(loggerType, optSelected, &date, &month, &year);
    // fdata->getDateSchedulerDatalog(_on_, loggerType, &date, &month, &year);
    enable[0] = fdata->getEnableDateScheduler(_on_, loggerType);
    enable[1] = fdata->getEnableDateScheduler(_off_, loggerType);

    while (true)
    {
        if (hmi->getExitPageFlag())
        {
            // Serial.println("Exit Date Scheduler page");
            break;
        }
        for (uint8_t i = 0; i < 11; i++)
        {
            button[i] = hmi->getDataButton(i);
            if (button[i])
            {
                switch (i)
                {
                case 0:
                    if (++date > 31)
                        date = 0;
                    hmi->setStringToNextion("t2.txt", utils.integerToString(date, 2));
                    break;
                case 1:
                    if (date > 0)
                        date--;
                    else
                        date = 31;
                    hmi->setStringToNextion("t2.txt", utils.integerToString(date, 2));
                    break;
                case 2:
                    if (++month > 12)
                        month = 0;
                    hmi->setStringToNextion("t3.txt", utils.integerToString(month, 2));
                    break;
                case 3:
                    if (month > 0)
                        month--;
                    else
                        month = 12;
                    hmi->setStringToNextion("t3.txt", utils.integerToString(month, 2));
                    break;
                case 4:
                    if (++year > 99)
                        year = 0;
                    hmi->setStringToNextion("t4.txt", utils.integerToString(year, 2));
                    break;
                case 5:
                    if (year > 0)
                        year--;
                    else
                        year = 99;
                    hmi->setStringToNextion("t4.txt", utils.integerToString(year, 2));
                    break;
                case 6:
                    if (!optSelected)
                        fdata->setDateSchedulerDatalog(_on_, loggerType, date, month, year);
                    else
                        fdata->setDateSchedulerDatalog(_off_, loggerType, date, month, year);
                    hmi->showSavingBarAnimation(200);
                    break;
                case 7:
                    optSelected = 0;
                    break;
                case 8:
                    optSelected = 1;
                    break;
                case 9:
                    enable[0] = !enable[0];
                    if (fdata->setEnableDateScheduler(_on_, loggerType, enable[0]))
                    {
                        hmi->showSavingBarAnimation(100);
                        hmi->setIntegerToNextion("bt0.val", enable[0]);
                    }
                    break;
                case 10:
                    enable[1] = !enable[1];
                    if (fdata->setEnableDateScheduler(_off_, loggerType, enable[1]))
                    {
                        hmi->showSavingBarAnimation(100);
                        hmi->setIntegerToNextion("bt1.val", enable[1]);
                    }
                    break;
                default:
                    break;
                }
                if (i >= 6 && i <= 8)
                {
                    updateSelectedDateScheduler(loggerType, optSelected, &date, &month, &year);
                }
            }
        }
    }
}

void Datalogger::showBaudrateOption(bool type, bool show)
{
    hmi->setVisObjectNextion("b0", !show);
    hmi->setVisObjectNextion("q2", !show);
    hmi->setVisObjectNextion("b2", !show);
    if (show)
    {
        for (uint8_t i = 3; i <= 9; i++)
        {
            hmi->setVisObjectNextion(String() + "b" + i, !show);
            if (i < 6)
                hmi->setVisObjectNextion(String() + "t" + (i - 3), !show);
            if (i < 5)
                hmi->setVisObjectNextion(String() + "q" + (i - 3), !show);
        }
        hmi->setVisObjectNextion("q5", show);
    }

    if (type == logging)
        hmi->setVisObjectNextion("q6", show);

    for (uint i = 10; i <= 19; i++)
    {
        hmi->setVisObjectNextion(String() + "b" + i, show);
    }
    if (!show)
    {
        hmi->setVisObjectNextion("q5", show);
        for (uint8_t i = 3; i <= 9; i++)
        {
            hmi->setVisObjectNextion(String() + "b" + i, !show);
            if (i < 6)
                hmi->setVisObjectNextion(String() + "t" + (i - 3), !show);
            if (i < 5)
                hmi->setVisObjectNextion(String() + "q" + (i - 3), !show);
        }
    }
}

void Datalogger::updateSelectedBaudrateToNextion(bool type, uint8_t selected)
{
    fdata->setBaudrateSerial(type, selected);
    // Serial.println(String() + "Baudrate 1 set: " + fdata->getBaudrateSerial(type));

    for (uint8_t i = 10; i <= 19; i++)
    {
        if ((i - 10) == selected)
            hmi->setIntegerToNextion(String() + "b" + i + ".picc", Debug_Baud_Select);
        else
            hmi->setIntegerToNextion(String() + "b" + i + ".picc", Debug_Normal_Btn);
    }
}

bool Datalogger::checkSchedule(bool scheduleType, uint8_t loggerType)
{
    uint8_t dateSet;
    uint8_t monthSet;
    uint8_t yearSet;
    uint8_t hourSet[2];
    uint8_t minuteSet[2];
    uint16_t timeMinute = 0;
    uint16_t timeMinuteSet[2] = {0, 0};
    uint8_t date = 0;
    uint8_t month = 0;
    uint8_t year = 0;
    bool timeSchedEn[4];
    bool dateSchedEn[2];

    mtime.getActualTimeInMinute(&timeMinute);
    mtime.getActualDate(&date, &month, &year);
    fdata->getDateSchedulerDatalog(scheduleType, loggerType, &dateSet, &monthSet, &yearSet);
    fdata->getTimeSchedulerDatalog(scheduleType, loggerType, 0, &hourSet[0], &minuteSet[0]);
    fdata->getTimeSchedulerDatalog(scheduleType, loggerType, 1, &hourSet[1], &minuteSet[1]);
    timeMinuteSet[0] = (hourSet[0] * 60) + minuteSet[0];
    timeMinuteSet[1] = (hourSet[1] * 60) + minuteSet[1];

    dateSchedEn[0] = fdata->getEnableDateScheduler(scheduleType, loggerType);
    dateSchedEn[1] = fdata->getEnableDateScheduler(!scheduleType, loggerType);
    timeSchedEn[0] = fdata->getEnableTimeScheduler(scheduleType, loggerType, 0);
    timeSchedEn[1] = fdata->getEnableTimeScheduler(scheduleType, loggerType, 1);
    timeSchedEn[2] = fdata->getEnableTimeScheduler(!scheduleType, loggerType, 0);
    timeSchedEn[3] = fdata->getEnableTimeScheduler(!scheduleType, loggerType, 1);

    if (dateSchedEn[0])
    {
        // Serial.println(String() + utils.integerToString(date, 2) + "/" + utils.integerToString(month, 2) + "/" + utils.integerToString(year, 2) + " -> " + utils.integerToString(dateSet, 2) + "/" + utils.integerToString(monthSet, 2) + "/" + utils.integerToString(yearSet, 2));
    }
    if (timeSchedEn[0] || timeSchedEn[1])
    {
        // Serial.print(String() + utils.integerToString((timeMinute / 60), 2) + ":" + utils.integerToString((timeMinute % 60), 2) + " -> " + utils.integerToString(hourSet[0], 2) + ":" + utils.integerToString(minuteSet[0], 2) + " || ");
        // Serial.println(String() + utils.integerToString((timeMinute / 60), 2) + ":" + utils.integerToString((timeMinute % 60), 2) + " -> " + utils.integerToString(hourSet[1], 2) + ":" + utils.integerToString(minuteSet[1], 2));
    }
    // Serial.print(loggerType == 0 ? "Serial log " : loggerType == 1 ? "Local log "
    //     : "Remote log ");
    // Serial.print(scheduleType == _on_ ? "On" : "Off");

    if (dateSchedEn[0])
    {
        if (date == dateSet && month == monthSet && year == yearSet)
        {
            if (timeSchedEn[0] || timeSchedEn[1])
            {
                if ((timeMinute == timeMinuteSet[0] && timeSchedEn[0]) || (timeMinute == timeMinuteSet[1] && timeSchedEn[1]))
                {
                    // Serial.println(" (Date&Time True) _________________________");
                    return true;
                }
            }
            else
            {
                // Serial.println(" (Date True) _________________________");
                return true;
            }
        }
    }
    else
    {
        if (timeSchedEn[0] || timeSchedEn[1])
        {
            if ((timeMinute == timeMinuteSet[0] && timeSchedEn[0]) || (timeMinute == timeMinuteSet[1] && timeSchedEn[1]))
            {
                // Serial.println(" (Time True) _________________________");
                return true;
            }
        }
        else
        {
            if (!dateSchedEn[0] && !dateSchedEn[1] && !timeSchedEn[0] && !timeSchedEn[1] && !timeSchedEn[2] && !timeSchedEn[3] && fdata->getDatalogStatus(loggerType))
            {
                // Serial.println(" (True) _________________________");
                return true;
            }
        }
    }

    // Serial.println(" (False)");
    return false;
}

void Datalogger::logData(uint8_t loggerType)
{
    String logMessage;
    if (fdata->getDatalogStatus(loggerType))
    {
        if (!rtos->counterDownSecondsLog[loggerType])
        {
            if (loggerType == serial)
            {
                logMessage = String() + mtime.getDateStr() + ";" + mtime.getTimeStr();
                for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                {
                    if (fdata->getChannelEnDisStatus(i))
                    {
                        logMessage += ";";
                        logMessage += ads->getStringWeightInGram(i);
                    }
                    else
                    {
                        logMessage += ";";
                        logMessage += "Disabled";
                    }
                }
                // Serial.print("Serial log: ");
                // Serial.println(logMessage);
            }
            else if (loggerType == local)
            {
                logMessage = String() + mtime.getTimeStr();
                for (uint8_t i = 0; i < MAX_CHANNEL; i++)
                {
                    if (fdata->getChannelEnDisStatus(i))
                    {
                        logMessage += ";";
                        logMessage += ads->getStringWeightInGram(i);
                    }
                    else
                    {
                        logMessage += ";";
                        logMessage += "Disabled";
                    }
                }
                // Serial.print("Local log: ");
                // Serial.println(logMessage);
                sdcard->appendFileCsv(logMessage);
            }
            else if (loggerType == remote)
            {
                if (!fdata->isAllChannelDisabled())
                {
                    while (!fdata->getChannelEnDisStatus(remoteUpdateForChannel))
                    {
                        if (++remoteUpdateForChannel > 6)
                            remoteUpdateForChannel = 0;
                    }
                    if (!rtos->remoteLogTriggered[remoteUpdateForChannel])
                    {
                        rtos->remoteLogTriggered[remoteUpdateForChannel] = true;
                    }
                    if (++remoteUpdateForChannel > 6)
                        remoteUpdateForChannel = 0;
                    // Serial.println("Remote data logging triggered!");
                }
            }
            rtos->counterDownSecondsLog[loggerType] = fdata->getPeriodDatalog(loggerType);
        }
    }
}

///////////THINKSPEAK DATA LOGGER
void Datalogger::remoteLogging(uint8_t channel)
{
    String serverPath = thingSpeakServer + fdata->getKeyAPI() + "&field" + (channel + 1) + "=" + ads->getWeightInGram(channel);
    String payload = "Payload : ";
    int httpResponseCode = 0;

    HTTPClient http;

    if (rtos->wifiConnected)
    {
        // Serial.println(String() + "Log data Thingspeak: Channel " + (channel + 1));
        //  Your Domain name with URL path or IP address with path
        http.begin(serverPath.c_str());

        // Send HTTP GET request
        httpResponseCode = http.GET();

        if (httpResponseCode > 0)
        {
            // Serial.print(String() + "Channel " + (channel + 1) + " -> HTTP Response code: ");
            // Serial.println(httpResponseCode);
            payload += http.getString();
            // Serial.println(payload);
        }
        else
        {
            // Serial.print("Error code: ");
            // Serial.println(httpResponseCode);
        }

        // Free resources
        http.end();
    }
    else
    {
        // Serial.println("WiFi Disconnected");
    }
}

Datalogger *logger = new (Datalogger);