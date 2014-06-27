#include <SimpleMessageSystem.h> 
#include <CapacitiveSensor.h>

CapacitiveSensor cspin_3 = CapacitiveSensor(2,3);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
int capSenseSampleFrame = 30; 

int sens0 = 0;
int sens1 = 0;
int sens2 = 0;
int sens3 = 0;

long sensCS3 = 0;

void setup()
{
 Serial.begin(115200); 
  cspin_3.set_CS_AutocaL_Millis(0xFFFFFFFF); // turn off autocalibrate for csPins

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
  
}

void readCapSensePins()
{
   sensCS3 = 
     cspin_3.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 
   //sensCS3 = constrain(sensCS3 /20000, 0, 1);
   sensCS3 = map(sensCS3, 0,15000, 0, 1023);
   sensCS3 = constrain(sensCS3, 0, 1023);
   
   
}


void sendValuesSMS() {
  messageSendInt(sens0);  
  messageSendInt(sens1);
  messageSendInt(sens2);
  messageSendInt(sens3);
  messageSendInt(sensCS3);
  messageEnd();
}
