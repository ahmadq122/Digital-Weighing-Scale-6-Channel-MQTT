#include "Utility.h"
#include "PinMap.h"
#include "RTOS/RTOS.h"
#include "FlashMemory/FlashMemory.h"

uint8_t Utility::charArraySize(const char *charArray)
{
    unsigned int index = 0;

    for (index = 0; index < 0xFF; index++)
    {
        if (charArray[index] == '\0')
            return index;
    }
    return 0;
}

void Utility::integerToString(int32_t number, char *buffer, uint8_t len)
{
    if (len == 1)
        sprintf(buffer, "%01d", number);
    else if (len == 2)
        sprintf(buffer, "%02d", number);
    else if (len == 3)
        sprintf(buffer, "%03d", number);
    else if (len == 4)
        sprintf(buffer, "%04d", number);
    else if (len == 5)
        sprintf(buffer, "%05d", number);
    else if (len == 6)
        sprintf(buffer, "%06d", number);
    else if (len == 7)
        sprintf(buffer, "%07d", number);
    else if (len == 8)
        sprintf(buffer, "%08d", number);
    else if (len == 9)
        sprintf(buffer, "%09d", number);
    else if (len == 10)
        sprintf(buffer, "%010d", number);
}

char *Utility::integerToString(int32_t number, uint8_t len)
{
    static char buffer[20];

    strcpy(buffer, "");
    if (len == 0)
        sprintf(buffer, "%d", number);
    else if (len == 1)
        sprintf(buffer, "%01d", number);
    else if (len == 2)
        sprintf(buffer, "%02d", number);
    else if (len == 3)
        sprintf(buffer, "%03d", number);
    else if (len == 4)
        sprintf(buffer, "%04d", number);
    else if (len == 5)
        sprintf(buffer, "%05d", number);
    else if (len == 6)
        sprintf(buffer, "%06d", number);
    else if (len == 7)
        sprintf(buffer, "%07d", number);
    else if (len == 8)
        sprintf(buffer, "%08d", number);
    else if (len == 9)
        sprintf(buffer, "%09d", number);
    else if (len == 10)
        sprintf(buffer, "%010d", number);

    return buffer;
}

void Utility::floatToString(double number, char *str, unsigned char noOfDigitsBeforePoint, unsigned char noOfDigitsAfterPoint)
{
    noOfDigitsAfterPoint = constrain(noOfDigitsAfterPoint, 0, 5);
    unsigned long temp1 = static_cast<unsigned long>(number);
    double temp2 = (number - static_cast<double>(temp1)) * generateMultiplier(noOfDigitsAfterPoint);
    unsigned long temp3 = static_cast<unsigned long>(temp2);

    integerToString(temp1, str, noOfDigitsBeforePoint);

    if (noOfDigitsAfterPoint != 0)
    {
        str[noOfDigitsBeforePoint] = '.';
        integerToString(temp3, &str[noOfDigitsBeforePoint + 1], noOfDigitsAfterPoint);
        str[noOfDigitsBeforePoint + 1 + noOfDigitsAfterPoint] = '\0';
    }
    else
        str[noOfDigitsBeforePoint] = '\0';
}

char *Utility::floatToString(double number, unsigned char noOfDigitsBeforePoint, unsigned char noOfDigitsAfterPoint)
{
    static char str[20];
    unsigned long temp1 = static_cast<unsigned long>(number);
    double temp2 = (number - static_cast<double>(temp1)) * generateMultiplier(noOfDigitsAfterPoint);
    unsigned long temp3 = static_cast<unsigned long>(temp2);

    noOfDigitsAfterPoint = constrain(noOfDigitsAfterPoint, 0, 5);

    integerToString(temp1, str, noOfDigitsBeforePoint);

    if (noOfDigitsAfterPoint != 0)
    {
        str[noOfDigitsBeforePoint] = '.';
        integerToString(temp3, &str[noOfDigitsBeforePoint + 1], noOfDigitsAfterPoint);
        str[noOfDigitsBeforePoint + 1 + noOfDigitsAfterPoint] = '\0';
    }
    else
        str[noOfDigitsBeforePoint] = '\0';

    if (!noOfDigitsBeforePoint && !noOfDigitsAfterPoint)
        sprintf(str, "%f", number);

    return str;
}

char *Utility::getSplitString(char *str, char delimit, uint8_t index)
{
    static char tokenTemp[50];
    bool retState = false;
    if (strchr(str, delimit) != NULL)
    {
        // Serial.printf("%c is available in %s!\n", delimit, str);
        char strTemp[100];
        uint8_t i = 0;
        uint8_t availableLength = 0;
        uint8_t curIndex = 0;
        uint8_t strLength = charArraySize(str);

        // Serial.println(str);
        sprintf(strTemp, "%s%c", str, delimit);
        // Serial.println(strTemp);

        // Checking the max length available
        while (strTemp[i] != '\0')
        {
            // Serial.printf("%c\n", str[i]);
            if (strTemp[i] == delimit)
            {
                availableLength++;
            }
            i++;
        }
        // Serial.printf("length:%d\n", availableLength);
        // exit if out of range
        if (index >= availableLength)
        {
            // Serial.println("Index of splited str requested is out of range!");
            strcpy(tokenTemp, "N/A");
            retState = true;
        }
        i = 0;
        int8_t j = 0;
        while (strTemp[i] != '\0' && !retState)
        {
            // Serial.printf("%c\n", str[i]);
            if (strTemp[i] == delimit)
            {
                // Serial.printf("%d: %s\n", curIndex, tokenTemp);
                if (index == curIndex)
                {
                    // Serial.printf("j: %d\n", j);
                    tokenTemp[j] = '\0';
                    // Serial.printf("String return: %s\n", tokenTemp);
                    break;
                }
                strcpy(tokenTemp, "");
                j = 0;
                i++;
                curIndex++;
            }
            tokenTemp[j] = strTemp[i];
            // Serial.printf("i: %d, j: %d, c: %c\n", i, j, tokenTemp[j]);
            i++;
            j++;
        }
    }
    else
    {
        strcpy(tokenTemp, "N/A");
        // Serial.printf("%c is not available in %s!\n", delimit, str);
    }
    return tokenTemp;
}

bool Utility::isContainingNumber(char *str)
{
    uint8_t i = 0;
    while (str[i] != '\0')
    {
        if (str[i] < '0' || str[i] > '9')
            return false;
        i++;
    }
    return true;
}

double Utility::generateMultiplier(unsigned char parameter)
{
    parameter = constrain(parameter, 1, 5);
    if (parameter == 1)
        return 10;
    else if (parameter == 2)
        return 100;
    else if (parameter == 3)
        return 1000;
    else if (parameter == 4)
        return 10000;
    else if (parameter == 5)
        return 100000;
    else
        return 0;
}

Utility utils;