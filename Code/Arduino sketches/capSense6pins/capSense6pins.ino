#include <SimpleMessageSystem.h> 
#include <CapacitiveSensor.h>


#define COMMON_PIN      2    // The common 'send' pin for all keys
#define NUM_OF_SAMPLES  20   // Higher number whens more delay but more consistent readings
#define CAP_THRESHOLD   150  // Capactive reading that triggers a note (adjust to fit your needs)
#define NUM_OF_KEYS     6    // Number of keys that are on the keyboard

// This macro creates a capacitance "key" sensor object for each key on the piano keyboard:
#define CS(Y) CapacitiveSensor(2, Y)

// Defines the pins that the keys are connected to:
CapacitiveSensor keys[] = {CS(3), CS(4), CS(5)};

int arraysize = NUM_OF_KEYS;
long sensCS = 0;


void setup()
{
  // Turn off autocalibrate on all channels:
  for(int i=0; i<arraysize; ++i) {
    keys[i].set_CS_AutocaL_Millis(0xFFFFFFFF);
  }
 Serial.begin(115200);  

}


void loop()
{
  readCapSensePins();
 // sendValuesSMS();
  delay(20);
}

void readCapSensePins()
{
   // Loop through each key:
  for (int i = 0; i <arraysize; ++i) {
    // If the capacitance reading is greater than the threshold, play a note:
    if(keys[i].capacitiveSensor(NUM_OF_SAMPLES) > CAP_THRESHOLD) {
      sensCS = keys[i].capacitiveSensor(NUM_OF_SAMPLES);
      messageSendInt(sensCS);
      messageEnd();
    }
  }
  // sensCS3 = cspin_3.capacitiveSensor(capSenseSampleFrame); 

}


void sendValuesSMS() {
 
  // all capSense Touch values
//  messageSendInt(sensCS3);
  messageEnd();
}
