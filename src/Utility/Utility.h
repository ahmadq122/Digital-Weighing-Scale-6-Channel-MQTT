#pragma once

#include "Arduino.h"

#define color_white 65535
#define color_cyan 2047
#define color_grey 46518
#define color_black 0
#define color_red 63488

class Utility
{
public:
    uint8_t charArraySize(const char *charArray);
    void integerToString(int32_t number, char *buffer, uint8_t len);
    char* integerToString(int32_t number, uint8_t len=0);
    void floatToString(double number, char *str, unsigned char noOfDigitsBeforePoint, unsigned char noOfDigitsAfterPoint);
    char* floatToString(double number, unsigned char noOfDigitsBeforePoint = 0, unsigned char noOfDigitsAfterPoint = 0);
    char* getSplitString(char* str, char delimit, uint8_t index);
    bool isContainingNumber(char* str);

private:
    double generateMultiplier(unsigned char parameter);
    };

extern Utility utils;