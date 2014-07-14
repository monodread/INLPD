#include <SimpleMessageSystem.h> 
#include <CapacitiveSensor.h>
// create 6 instances of CapSense Pins
CapacitiveSensor cspin_3 = CapacitiveSensor(2,3);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_4 = CapacitiveSensor(2,4);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_5 = CapacitiveSensor(2,5);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_6 = CapacitiveSensor(2,6);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_7 = CapacitiveSensor(2,7);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_8 = CapacitiveSensor(2,8);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
int capSenseSampleFrame = 30; 
// variables for reading analog Ins
int sens0 = 0;
int sens1 = 0;
int sens2 = 0;
int sens3 = 0;
int sens4 = 0;
int sens5 = 0;
// create 6 variables for capSense values
long sensCS3 = 0;
long sensCS4 = 0;
long sensCS5 = 0;
long sensCS6 = 0;
long sensCS7 = 0;
long sensCS8 = 0;

void setup()
{
 Serial.begin(115200);  
//  cspin_3.set_CS_AutocaL_Millis(0xFFFFFFFF); // turn off autocalibrate for csPins

}


void loop()
{
  readAnalogIns();
  readCapSensePins();
  sendValuesSMS();
  delay(20);
}

void readAnalogIns()
{
 sens0 = analogRead(A0);
 sens1 = analogRead(A1);
 sens2 = analogRead(A2);
 sens3 = analogRead(A3);
 sens4 = analogRead(A4);
 sens5 = analogRead(A5);
  
}

void readCapSensePins()
{
   sensCS3 = cspin_3.capacitiveSensor(capSenseSampleFrame);  
   sensCS4 = cspin_4.capacitiveSensor(capSenseSampleFrame); 
   sensCS5 = cspin_5.capacitiveSensor(capSenseSampleFrame);
   sensCS6 = cspin_6.capacitiveSensor(capSenseSampleFrame); 
   sensCS7 = cspin_7.capacitiveSensor(capSenseSampleFrame); 
   sensCS8 = cspin_8.capacitiveSensor(capSenseSampleFrame); 

}


void sendValuesSMS() {
  // all analog values
  messageSendInt(sens0);  
  messageSendInt(sens1);
  messageSendInt(sens2);
  messageSendInt(sens3);
  messageSendInt(sens4);
  messageSendInt(sens5);
  // all capSense Touch values
  messageSendInt(sensCS3);
  messageSendInt(sensCS4);
  messageSendInt(sensCS5);
  messageSendInt(sensCS6);
  messageSendInt(sensCS7);
  messageSendInt(sensCS8);
  messageEnd();
}
