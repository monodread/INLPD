#include <SimpleMessageSystem.h> 
#include <CapacitiveSensor.h>

// how many buttons?
const int buttonPin1 = 6;
const int buttonPin2 = 7;
const int buttonPin3 = 8;
const int buttonPin4 = 9;
const int buttonPin5 = 10;
const int buttonPin6 = 11;
const int buttonPin7 = 12;

CapacitiveSensor cspin_3 = CapacitiveSensor(2,3);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_4 = CapacitiveSensor(2,4);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_5 = CapacitiveSensor(2,5);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_6 = CapacitiveSensor(2,6);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
int capSenseSampleFrame = 20; 

int sens0 = 0;
int sens1 = 0;
int sens2 = 0;
int sens3 = 0;
int sens4 = 0;
int sens5 = 0;
// variable for reading the pushbutton status
int button1State = 0;         
int button2State = 0;        
int button3State = 0;        
int button4State = 0;        
int button5State = 0;        
int button6State = 0;        
int button7State = 0;        

// previous button values
int lastButton1State = 0;         
int lastButton2State = 0;        
int lastButton3State = 0;        
int lastButton4State = 0;        
int lastButton5State = 0;        
int lastButton6State = 0;        
int lastButton7State = 0;        

long sensCS3 = 0;
long sensCS4 = 0;
long sensCS5 = 0;
long sensCS6 = 0;
long sensCS3Norm = 0;

void setup()
{
 Serial.begin(115200); 
  pinMode(buttonPin1, INPUT);     
  pinMode(buttonPin2, INPUT);     
  pinMode(buttonPin3, INPUT);     
  pinMode(buttonPin4, INPUT);     
  pinMode(buttonPin5, INPUT);     
  pinMode(buttonPin6, INPUT);     
  pinMode(buttonPin7, INPUT);     
 
//  cspin_3.set_CS_AutocaL_Millis(0xFFFFFFFF); // turn off autocalibrate for csPins

}


void loop()
{
  readDigitalIns();
  readAnalogIns();
  readCapSensePins();
  sendValuesSMS();
  delay(20);
}

void readDigitalIns()
{
    button1State = digitalRead(buttonPin1);
    button2State = digitalRead(buttonPin2);
    button3State = digitalRead(buttonPin3);
    button4State = digitalRead(buttonPin4);
    button5State = digitalRead(buttonPin5);
    button6State = digitalRead(buttonPin6);
    button7State = digitalRead(buttonPin7);
//    button1State == HIGH
//    if (buttonState != lastButtonState) {
//    if (buttonState == HIGH) {
 
}

void readAnalogIns()
{
 sens0 = analogRead(A0);
 sens1 = analogRead(A1);
 sens2 = analogRead(A2);
 sens3 = analogRead(A3);
 sens4 = analogRead(A3);
 sens5 = analogRead(A3);
  
}

void readCapSensePins()
{
   sensCS3 = cspin_3.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 
   sensCS4 = cspin_4.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 
   sensCS5 = cspin_5.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 
   sensCS6 = cspin_6.capacitiveSensor(capSenseSampleFrame); // Read one of the CapSensePins from the array 

   sensCS3 = constrain(sensCS3, 0, 100000);
   sensCS4 = constrain(sensCS4, 0, 100000);
   sensCS5 = constrain(sensCS5, 0, 100000);
   sensCS6 = constrain(sensCS6, 0, 100000);

   sensCS3Norm = sensCS3;
   sensCS3Norm = map(sensCS3Norm, 0,15000, 0, 1023);
   sensCS3Norm = constrain(sensCS3Norm, 0, 1023);
   
   
}


void sendValuesSMS() {
  // all analog values
  messageSendInt(sens0);  
  messageSendInt(sens1);
  messageSendInt(sens2);
  messageSendInt(sens3);
  messageSendInt(sens4);
  messageSendInt(sens5);
  // normalized Digital Touch read
  messageSendInt(sensCS3Norm);
  // full scale digital Touch values
  messageSendInt(sensCS3);
  messageSendInt(sensCS4);
  messageSendInt(sensCS5);
  messageSendInt(sensCS6);
  // all digital values
//   messageSendInt(button1State);
//   messageSendInt(button2State);
//   messageSendInt(button3State);
//   messageSendInt(button4State);
//   messageSendInt(button5State);
//   messageSendInt(button6State);
//   messageSendInt(button7State);
  
  messageEnd();
}
