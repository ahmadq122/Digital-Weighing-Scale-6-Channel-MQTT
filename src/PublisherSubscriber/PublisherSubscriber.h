#ifndef __PUBLISHERSUBSCRIBER__H__
#define __PUBLISHERSUBSCRIBER__H__

#include <Arduino.h>

class PublisherSubscriber
{
public:
    void setup(void);
    void routineTask(uint8_t updateChannel = 0x3F);
    void setWeightString(uint8_t channel, String value);

private:
    void reconnect();

    String weightString[6];
    String messagePrev[6];
};

extern PublisherSubscriber* pubSubs;

#endif //__PUBLISHERSUBSCRIBER__H__