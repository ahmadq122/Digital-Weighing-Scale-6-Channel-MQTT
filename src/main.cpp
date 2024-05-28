#include "StateMachine/StateMachine.h"
#include "FlashMemory/FlashMemory.h"

StateMachine* state = new(StateMachine);

void setup()
{
  // put your setup code here, to run once:
  state->setup();
}

void loop()
{
  // put your main code here, to run repeatedly:
  uint8_t nextState = HOME;

    while (true)
  {
    nextState = state->homeScreen();

    switch (nextState)
    {
    case NETWORK:
      state->networkSettings();
      break;
    case SETTINGS:
      state->settings();
      break;
    case UNITS:
      state->measurementUnits();
      break;
    case DATALOG:
      state->datalogSettings();
      break;
    default:
      break;
    }
  }
}
