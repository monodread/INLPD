/* 
 ---- SimpleMessageSystem Example 1 ----
 Control Arduino board functions with the following messages:
 
 r a -> read analog pins: 0..5 
 r s -> read sense pins: 0,1,2 
 r d -> read digital pins: 2..13
 w d [pin] [value] -> write digital pin
 w a [pin] [value] -> write analog pin
 
 
 Base: Thomas Ouellet Fredericks 
 Additions: Alexandre Quessy 
 more additions (pwm settings): Hanes Hoelzl \UdK 09
 more additions (cap sensing): Jonas Hummel \UdK 14
 
PWM help:
http://www.arduino.cc/playground/Main/TimerPWMCheatsheet
 */

// Include de SimpleMessageSystem library
// REMOVE THE FOLLOWING LINE IF USING WIRING
#include <SimpleMessageSystem.h> 
#include <CapacitiveSensor.h>

// for now, use fixed pins 4 + 2,6,8 for sensing the capacitance?
CapacitiveSensor cspin_3 = CapacitiveSensor(2,3);        // 10M resistor between pins 2 & 3, pin 3 is sensor pin, add a wire and or foil if desired
CapacitiveSensor cspin_4 = CapacitiveSensor(2,4);        // 10M resistor between pins 2 & 4, pin 4 is sensor pin, add a wire and or foil
CapacitiveSensor cspin_5 = CapacitiveSensor(2,5);        // 10M resistor between pins 2 & 5, pin 5 is sensor pin, add a wire and or foil
CapacitiveSensor cspin_6 = CapacitiveSensor(2,8);        // 10M resistor between pins 2 & 8, pin 8 is sensor pin, add a wire and or foil
int capSenseSampleFrame = 30; 
CapacitiveSensor capSensePins[] = {cspin_3,cspin_4,cspin_5, cspin_8}; // collect all CapSensing Pins in an array
int numCSPins = 4; // how many pins are used for CS?

void setup()
{
  
  // The following command initiates the serial port at 9600 baud. Please note this is VERY SLOW!!!!!! 
  // I suggest you use higher speeds in your own code. You can go up to 115200 with the USB version, that's 12x faster
  Serial.begin(115200); //Baud set at 9600 for compatibility, CHANGE!

       TCCR0B = TCCR0B & 0b11111000 | 0x01;       // Pins 5 and 6: controlled by Timer 0
       TCCR1B = TCCR1B & 0b11111000 | 0x01;       // Pins 9 and 10: controlled by timer 1
       TCCR2B = TCCR2B & 0b11111000 | 0x01;       // Pins 11 and 3: controlled by timer 2
   for (char i=0;i<numCSPins;i++) {
      capSensePins[i].set_CS_AutocaL_Millis(0xFFFFFFFF); // turn off autocalibrate for csPins
    };

}

void loop()
{

  if (messageBuild() > 0) { // Checks to see if the message is complete and erases any previous messages
    switch (messageGetChar()) { // Gets the first word as a character
    case 'r': // Read pins (analog or digital)
      readpins(); // Call the readpins function
      break; // Break from the switch
    case 'w': // Write pin
      writepin(); // Call the writepin function
      break;
    case 'p' : // change PWM freq
      pwm();
    }

  }

}

void readpins(){ // Read pins (analog or digital or Sensing)

  switch (messageGetChar()) { // Gets the next word as a character

    case 'd': // READ digital pins

    messageSendChar('d');  // Echo what is being read
    for (char i=2;i<14;i++) {
      messageSendInt(digitalRead(i)); // Read pins 2 to 13
    }
    messageEnd(); // Terminate the message being sent
    break; // Break from the switch
    
    case 's': // READ digital pins for CAP SENSING

    messageSendChar('s');  // Echo what is being read
    for (char i=0;i<numCSPins;i++) { // read pins for sensing 0..4
    
      messageSendInt(capSensePins[i].capacitiveSensor(capSenseSampleFrame)); // Read one of the CapSensePins from the array 
    }
    messageEnd(); // Terminate the message being sent
    break; // Break from the switch

  case 'a': // READ analog pins

    messageSendChar('a');  // Echo what is being read
    for (char i=0;i<6;i++) {
      messageSendInt(analogRead(i)); // Read pins 0 to 5
    }
    messageEnd(); // Terminate the message being sent

  }

}

void writepin() { // Write pin

  int pin;
  int state;

  switch (messageGetChar()) { // Gets the next word as a character

    case 'a' : // WRITE an analog pin

    pin = messageGetInt(); // Gets the next word as an integer
    state = messageGetInt(); // Gets the next word as an integer
    pinMode(pin, OUTPUT); //Sets the state of the pin to an output
    analogWrite(pin, state); //Sets the PWM of the pin 
    break;  // Break from the switch


    // WRITE a digital pin
  case 'd' : 

    pin = messageGetInt();  // Gets the next word as an integer
    state = messageGetInt();  // Gets the next word as an integer
    pinMode(pin,OUTPUT);  //Sets the state of the pin to an output
    digitalWrite(pin,state);  //Sets the state of the pin HIGH (1) or LOW (0)
    

  }

}

void pwm(){
  switch (messageGetInt()) { // Gets the next word as a character

    case 1 : //normal fastest speed
       TCCR0B = TCCR0B & 0b11111000 | 0x01;       // Pins 5 and 6: controlled by Timer 0
       TCCR1B = TCCR1B & 0b11111000 | 0x01;       // Pins 9 and 10: controlled by timer 1
       TCCR2B = TCCR2B & 0b11111000 | 0x01;       // Pins 11 and 3: controlled by timer 2
    break;  // Break from the switch

    case 2 : //2nd fastest speed
       TCCR0B = TCCR0B & 0b11111000 | 0x02;       // Pins 5 and 6: controlled by Timer 0
       TCCR1B = TCCR1B & 0b11111000 | 0x02;       // Pins 9 and 10: controlled by timer 1
       TCCR2B = TCCR2B & 0b11111000 | 0x02;       // Pins 11 and 3: controlled by timer 2
    break;  // Break from the switch

    case 3 : //3rd fastest speed
       TCCR0B = TCCR0B & 0b11111000 | 0x03;       // Pins 5 and 6: controlled by Timer 0
       TCCR1B = TCCR1B & 0b11111000 | 0x03;       // Pins 9 and 10: controlled by timer 1
       TCCR2B = TCCR2B & 0b11111000 | 0x03;       // Pins 11 and 3: controlled by timer 2
    break;  // Break from the switch

    case 4 : //4th fastest speed
       TCCR0B = TCCR0B & 0b11111000 | 0x04;       // Pins 5 and 6: controlled by Timer 0
       TCCR1B = TCCR1B & 0b11111000 | 0x04;       // Pins 9 and 10: controlled by timer 1
       TCCR2B = TCCR2B & 0b11111000 | 0x04;       // Pins 11 and 3: controlled by timer 2
    break;  // Break from the switch

  case 5 :     // slooo down
       TCCR0B = TCCR0B & 0b11111000 | 0x05;       // Pins 5 and 6: controlled by Timer 0
       TCCR1B = TCCR1B & 0b11111000 | 0x05;       // Pins 9 and 10: controlled by timer 1
       TCCR2B = TCCR2B & 0b11111000 | 0x05;       // Pins 11 and 3: controlled by timer 2
    

  }

}
