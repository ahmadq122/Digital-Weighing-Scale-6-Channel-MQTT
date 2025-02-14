#ifndef __NETWORK__
#define __NETWORK__

#include "Arduino.h"

class Network
{
public:
    void setup(void);
    bool checkConnection(uint8_t *wifiSignal, bool *wifiConnectionTriggered);
    bool checkConnection(void);
    void networkScanning(void);
    bool networkConfig(void);

private:
    void showNetworkProperty(bool flag);
    uint8_t calculateRSSILevel(int value);
    bool isStoredNetwork(const char* networkName);
    void showNetworkList(uint8_t noOfList);
    void showSelectedNetworkIndicator(uint8_t selected, uint8_t noOfList);
    bool previousConnectionState = false;
};

extern Network* net;

#endif