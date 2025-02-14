#include "Nextion.h"
#include "FlashMemory/FlashMemory.h"
#include "RTOS/RTOS.h"

void Nextion::init(void)
{
  rtos->dimmCounterDownSecond = fdata->getDimScreenTimer();
  rtos->currentBrightness = fdata->getScreenBrightness();
  setIntegerToNextion("dim", rtos->currentBrightness < 10 ? 10 : rtos->currentBrightness);
}

void Nextion::sendCommandToNextion(const char *cmd)
{
  NexSerial.print(cmd);
  NexSerial.write(0xFF);
  NexSerial.write(0xFF);
  NexSerial.write(0xFF);
}

void Nextion::setStringToNextion(const char *variableName, const char *newString)
{
  // Serial.println(String() + "setStringToNextion " + variableName + " " + newString);
  // String cmd;
  // String buffer = String() + "\"" + newString + "\"";
  char cmd[50];
  sprintf(cmd, "%s=\"%s\"", variableName, newString);
  // Serial.println(cmd);
  // cmd = variableName;
  // cmd += "=";
  // cmd += buffer;
  sendCommandToNextion(cmd);
}

void Nextion::setIntegerToNextion(const char *variableName, int32_t newValue)
{
  // String cmd;
  // char buffer[10] = {0};
  char cmd[30];
  sprintf(cmd, "%s=%d", variableName, newValue);
  // Serial.println(String() + "setIntegerToNextion " + variableName + " " + newValue);
  // Serial.println(String() + cmd);
  // ultoa(newValue, buffer, 10);

  // cmd = String() + variableName;
  // cmd += "=";
  // cmd += buffer;
  sendCommandToNextion(cmd);
}
// void Nextion::setIntegerToNextion(String variableName, uint64_t newValue)
// {
//   String cmd;
//   char buffer[10] = {0};

//   ultoa(newValue, buffer, 10);

//   cmd = variableName;
//   cmd += "=";
//   cmd += buffer;
//   sendCommandToNextion(cmd.c_str());
// }

bool Nextion::checkDataStringFromNextion(const char *stringData)
{
  // char dat[3][20]; //type-id-data//"str-0-off"
  // char str[20];
  String dataStr[3];
  char split = '-';
  uint8_t splitState = 0;
  uint8_t index = 0;
  bool valid = false;
  uint8_t type = 0xFF;
  uint8_t id = 0;

  // Serial.println(stringData);

  while (stringData[index] != '\0' && index < 30)
  {
    if (stringData[index] == split)
    {
      // dat[splitState][index1] = '\0';
      // dataStr[splitState] +='\0';
      splitState++;
      // index1 = 0;
      index += 1;
    }
    // dat[splitState][index1] = stringData[index];
    dataStr[splitState] += stringData[index];
    index++;
    // index1++;
  }
  dataStr[splitState] += stringData[index];
  // dat[splitState][index1] = stringData[index];

  if (splitState == 2)
    valid = true;

  if (valid)
  {
    type = getTypeOfDataFromNextion(dataStr[0].c_str());
    id = atoi(dataStr[1].c_str());
    if (type == BUTTON)
    {
      presetScreenBrightness();
      dataButton[id] = atoi(dataStr[2].c_str());
    }
    else if (type == STRING)
    {
      strcpy(dataString[id], dataStr[2].c_str());
      // Serial.println(String() + dataStr[2]);
    }
    else if (type == INTEGER)
    {
      dataInteger[id] = atol(dataStr[2].c_str());
    }
    else if (type == FLOAT)
    {
      dataFloat[id] = atof(dataStr[2].c_str());
    }
    else if (type == BUZZER)
    {
      presetScreenBrightness();
      dataBuzzer = atoi(dataStr[2].c_str());
    }
    else if (type == WAIT)
    {
      waitingEndSignal = atoi(dataStr[2].c_str()) > 0 ? true : false;
      presetScreenBrightness();
    }
    else if (type == EXIT)
    {
      presetScreenBrightness();
      exitPageFlag = atoi(dataStr[2].c_str()) > 0 ? true : false;
      exitPageFlagCounter++;
      if (exitPageFlagCounter > 5)
        showPage("home");
    }
    else if (type == TOUCH)
    {
      presetScreenBrightness();
    }
    else
      valid = false;
  }
  return valid;
}

uint8_t Nextion::getTypeOfDataFromNextion(const char *stringData)
{
  String typeString = stringData;
  if (typeString == FLAG_BUTTON)
    return BUTTON;
  else if (typeString == FLAG_STRING)
    return STRING;
  else if (typeString == FLAG_INTEGER)
    return INTEGER;
  else if (typeString == FLAG_FLOAT)
    return FLOAT;
  else if (typeString == FLAG_BUZZER)
    return BUZZER;
  else if (typeString == FLAG_WAIT)
    return WAIT;
  else if (typeString == FLAG_EXIT)
    return EXIT;
  else if (typeString == FLAG_TOUCH)
    return TOUCH;
  else
    return UNKNOWN;
}

bool Nextion::checkAnyButtonPressed(uint8_t *getId)
{
  if (exitPageFlag)
  {
    *getId = 0;
    return true;
  }
  for (uint8_t i = 0; i < 20; i++)
  {
    if (dataButton[i])
    {
      *getId = i;
      return true;
    }
  }
  return false;
}

bool Nextion::getExitPageFlag(void)
{
  bool temp = exitPageFlag;
  exitPageFlag = false;
  exitPageFlagCounter = 0;
  return temp;
}
uint8_t Nextion::getDataButton(uint8_t id)
{
  uint8_t temp = dataButton[id];
  dataButton[id] = 0;
  return temp;
}
const char *Nextion::getDataString(uint8_t id)
{
  return dataString[id];
}
uint64_t Nextion::getDataInteger(uint8_t id)
{
  return dataInteger[id];
}
double Nextion::getDataFloat(uint8_t id)
{
  return dataFloat[id];
}

uint8_t Nextion::getDataBuzzer(void)
{
  return dataBuzzer;
}

bool Nextion::getWaitingEndSignal(void)
{
  bool temp = waitingEndSignal;
  waitingEndSignal = false;
  return temp;
}

void Nextion::flushAvailableSerial(void)
{
  while (NexSerial.available())
  {
    NexSerial.read();
  }
  flushAvailableButton();
}
void Nextion::flushAvailableButton(void)
{
  for (uint8_t i = 0; i < 20; i++)
    dataButton[i] = 0;
  waitingEndSignal = 0;
  exitPageFlag = 0;
  exitPageFlagCounter = 0;
}

void Nextion::setVisObjectNextion(const char *object, bool visValue)
{
  char cmd[30];
  sprintf(cmd, "vis %s,%d", object, (int16_t)(visValue ? 1 : 0));
  // String cmd = "vis ";
  // cmd += object;
  // cmd += ",";
  // if (visValue)
  //   cmd += String() + 1;
  // else
  //   cmd += String() + 0;
  sendCommandToNextion(cmd);
}

void Nextion::showPage(const char *page)
{
  char cmd[30];
  sprintf(cmd, "page %s", page);
  // String cmd = String("page ");
  // cmd += page;
  flushAvailableSerial(); // clear all the previous serial receive data and button
  sendCommandToNextion(cmd);
}

/*
 * Receive uint32_t fdata->
 *
 * @param number - save uint32_t fdata->
 * @param timeout - set timeout time.
 *
 * @retval true - success.
 * @retval false - failed.
 *
 */
bool Nextion::recvRetNumber(uint32_t *number, uint32_t timeout)
{
  bool ret = false;
  uint8_t temp[8] = {0};

  if (!number)
  {
    goto __return;
  }

  NexSerial.setTimeout(timeout);
  if (sizeof(temp) != NexSerial.readBytes((char *)temp, sizeof(temp)))
  {
    goto __return;
  }

  if (temp[0] == NEX_RET_NUMBER_HEAD && temp[5] == 0xFF && temp[6] == 0xFF && temp[7] == 0xFF)
  {
    *number = ((uint32_t)temp[4] << 24) | ((uint32_t)temp[3] << 16) | (temp[2] << 8) | (temp[1]);
    ret = true;
  }

__return:

  // if (ret)
  // {
  //     dbSerialPrint("recvRetNumber :");
  //     dbSerialPrintln(*number);
  // }
  // else
  // {
  //     dbSerialPrintln("recvRetNumber err");
  // }

  return ret;
}

#define NEX_RET_STRING_HEAD (0x70)
#define NEX_RET_NUMBER_HEAD (0x71)

/*
 * Receive string fdata->
 *
 * @param buffer - save string fdata->
 * @param len - string buffer length.
 * @param timeout - set timeout time.
 *
 * @return the length of string buffer.
 *
 */

uint16_t Nextion::recvRetString(char *buffer, uint16_t len, uint32_t timeout)
{
  uint16_t ret = 0;
  bool str_start_flag = false;
  uint8_t cnt_0xff = 0;
  String temp = String("");
  uint8_t c = 0;
  long start;

  if (!buffer || len == 0)
  {
    goto __return;
  }

  start = millis();
  while (millis() - start <= timeout)
  {
    while (NexSerial.available())
    {
      c = NexSerial.read();
      if (str_start_flag)
      {
        if (0xFF == c)
        {
          cnt_0xff++;
          if (cnt_0xff >= 3)
          {
            break;
          }
        }
        else
        {
          temp += (char)c;
        }
      }
      else if (NEX_RET_STRING_HEAD == c)
      {
        str_start_flag = true;
      }
    }

    if (cnt_0xff >= 3)
    {
      break;
    }
  }

  ret = temp.length();
  ret = ret > len ? len : ret;
  strncpy(buffer, temp.c_str(), ret);

__return:

  // dbSerialPrint("recvRetString[");
  // dbSerialPrint(temp.length());
  // dbSerialPrint(",");
  // dbSerialPrint(temp);
  // dbSerialPrintln("]");

  return ret;
}

uint16_t Nextion::getValue(const char *variableName, uint32_t *number)
{
  char cmd[30];
  sprintf(cmd, "get %s", variableName);
  // String cmd = String("get ");
  // cmd += variableName;
  sendCommandToNextion(cmd);
  return recvRetNumber(number);
}
uint16_t Nextion::getText(const char *variableName, char *buffer, uint32_t len)
{
  char cmd[30];
  sprintf(cmd, "get %s", variableName);
  // String cmd;
  // cmd += "get ";
  // cmd += variableName;
  sendCommandToNextion(cmd);
  return recvRetString(buffer, len);
}

void Nextion::waitForPageRespon(void)
{
  uint64_t startTime = millis();
  while (!getWaitingEndSignal())
  {
    // Serial.println("Waiting for page ready");
    delay(100);
    if ((millis() - startTime) > PAGE_TIMEOUT)
    {
      // Serial.println("Waiting for page timeout!");
      break;
    }
  }
  if ((millis() - startTime) <= PAGE_TIMEOUT)
  {
    // Serial.println("Page ready!");
  }
}

/*
  SerialEvent occurs whenever a new data comes in the hardware serial RX. This
  routine is run between each time loop() runs, so using delay inside loop can
  delay response. Multiple bytes of data may be available.
*/
void Nextion::serialEvent_2(void)
{
  String inputString = "";
  bool available = false;

  while (NexSerial.available())
  {
    available = true;
    // get the new byte:
    char inChar = (char)NexSerial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag so the main loop can
    // do something about it:
  }
  if (available)
  {
    if (checkDataStringFromNextion(inputString.c_str()))
    {
      // Serial.println("Data found!");
    }
    else
    {
      // Serial.println("Failed to get the data!");
    }
  }
}

void Nextion::presetScreenBrightness(void)
{
  if (fdata->getDimScreenTimer() > 0)
  {
    rtos->dimmCounterDownSecond = fdata->getDimScreenTimer();
    if (rtos->currentBrightness != fdata->getScreenBrightness())
    {
      rtos->currentBrightness = fdata->getScreenBrightness();
      setIntegerToNextion("dim", rtos->currentBrightness < 10 ? 10 : rtos->currentBrightness);
    }
  }
}

void Nextion::showSavingBarAnimation(uint16_t msDuration)
{
  uint8_t progress = 0;
  bool speedRate = fdata->getSpeedRate();
  const uint16_t dlay = (speedRate ? msDuration : (msDuration / 2)) / 10;

  setVisObjectNextion("saving", true);
  while (progress <= 100)
  {
    hmi->setIntegerToNextion("saving.val", progress);
    progress += 10;
    delay(dlay);
  }
  delay((msDuration > 500) ? 500 : msDuration);
  hmi->setVisObjectNextion("saving", false);
}

Nextion *hmi = new (Nextion);