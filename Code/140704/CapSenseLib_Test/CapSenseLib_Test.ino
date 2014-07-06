#include <CapacitiveSensor.h>
#include <SimpleMessageSystem.h> 

/*
based on "CapitiveSense Library Demo Sketch"
by Paul Badger 2008
 * Uses a high value resistor e.g. 10M between send pin and receive pin
 * Resistor effects sensitivity, experiment with values, 50K - 50M. Larger resistor values yield larger sensor values.
 * Receive pin is the sensor pin - try different amounts of foil/metal on this pin
*/


CapacitiveSensor   cspin_3 = CapacitiveSensor(2,3);        // 10M resistor between pins 4 & 2, pin 2 is sensor pin, add a wire and or foil if desired
CapacitiveSensor   cspin_4 = CapacitiveSensor(2,4);        // 10M resistor between pins 4 & 2, pin 2 is sensor pin, add a wire and or foil if desired
int capSenseSampleFrame = 50; 

long sensCS3 = 0L;
long sensCS4 = 0L;

void setup()                    
{
   cspin_3.set_CS_AutocaL_Millis(0xFFFFFFFF);     // turn off autocalibrate on channel 1 - just as an example
   cspin_3.set_CS_Timeout_Millis(700);     // reduce timeout between reading, default is 2000
   cspin_4.set_CS_Timeout_Millis(700);     // reduce timeout between reading, default is 2000
   Serial.begin(115200);
}

void loop()                    
{
  readCapSensePins();
  sendValuesSMS();
  delay(20);
}

void readCapSensePins()
{
   sensCS3 = cspin_3.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 
   sensCS4 = cspin_4.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 

}

void sendValuesSMS() {
  // full scale digital Touch values
  messageSendInt(sensCS3);
  messageSendInt(sensCS4);

  messageEnd();
}


