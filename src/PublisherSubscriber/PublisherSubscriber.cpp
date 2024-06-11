#include <WiFi.h>
// #include <ArduinoJson.h>
#include <PubSubClient.h>
#include "RTOS/RTOS.h"
#include "PublisherSubscriber.h"
#include "FlashMemory/FlashMemory.h"
#include "Utility/Utility.h"

// Add your MQTT Broker IP address, example:
// const char *mqtt_server = "192.168.43.163";
char mqtt_server[21];
// const char *mqtt_server = "test.mosquitto.org";
// uint16_t mqtt_server_port = 1883;

// Receive from nextion 192.168.43.163:1883

WiFiClient espClient;
PubSubClient client(espClient);

void callback(char *topic, byte *message, unsigned int length);

void PublisherSubscriber::setup(void)
{
    strcpy(mqtt_server, utils.getSplitString(const_cast<char *>(fdata->getBrokerMqtt()), ':', 0));
    uint16_t mqtt_server_port = atoi(utils.getSplitString(const_cast<char *>(fdata->getBrokerMqtt()), ':', 1));
    Serial.println(String() + fdata->getBrokerMqtt() + " " + "Server " + mqtt_server + " " + mqtt_server_port);
    client.setServer(mqtt_server, mqtt_server_port);
    client.setCallback(callback);
}

void PublisherSubscriber::routineTask(uint8_t updateChannel)
{
    if (!client.connected())
    {
        reconnect();
    }
    client.loop();

    /// Publish to broker
    String topic = "esp32/dws6c/sn/grams/ch";
    String message[6];
    char msgJson[6][20];
    for (uint8_t i = 0; i < 6; i++)
    {
        //"ch1":"00000.00"
        if (updateChannel & (0x01 << i))
        {
            sprintf(msgJson[i], "\"%s\"", weightString[i]);
        }
        else
        {
            sprintf(msgJson[i], "\"%s\"", "Disabled");
        }
        message[i] = String(msgJson[i]);

        if (messagePrev[i] != message[i])
        {
            client.publish(String(topic + (i + 1)).c_str(), message[i].c_str());
            messagePrev[i] = message[i];
        }
    }
}

void PublisherSubscriber::setWeightString(uint8_t channel, String value)
{
    weightString[channel] = value;
}

void PublisherSubscriber::reconnect()
{
    // Loop until we're reconnected
    while (!client.connected())
    {
        Serial.print("Attempting MQTT connection...");
        // Attempt to connect
        if (client.connect("esp32"))
        {
            Serial.println("connected");
            // Subscribe
            // client.subscribe("esp32/output");
        }
        else
        {
            Serial.print("failed, rc=");
            Serial.print(client.state());
            Serial.println(" try again in 5 seconds");
            // Wait 5 seconds before retrying
            delay(5000);
        }
    }
}

void callback(char *topic, byte *message, unsigned int length)
{
    Serial.print("Message arrived on topic: ");
    Serial.print(topic);
    Serial.print(". Message: ");
    String messageTemp;

    for (int i = 0; i < length; i++)
    {
        Serial.print((char)message[i]);
        messageTemp += (char)message[i];
    }
    Serial.println();

    // // Feel free to add more if statements to control more GPIOs with MQTT

    // // If a message is received on the topic esp32/output, you check if the message is either "on" or "off".
    // // Changes the output state according to the message
    // if (String(topic) == "esp32/output") {
    //   Serial.print("Changing output to ");
    //   if(messageTemp == "on"){
    //     Serial.println("on");
    //     digitalWrite(ledPin, HIGH);
    //   }
    //   else if(messageTemp == "off"){
    //     Serial.println("off");
    //     digitalWrite(ledPin, LOW);
    //   }
    // }
}

PublisherSubscriber *pubSubs = new (PublisherSubscriber);
