//inpld send. default is node A
//change myNode to B,C,D when upload code to the other nodes
//also make shure to have small differences in updateRate like (A:30, B:31, C: 32) 

// Include the SimpleMessageSystem library
#include <SimpleMessageSystem.h> 
#include <Ports.h>
#include <RF12.h>

int sens0, sens1, sens2, sens3;

const char myNodeID = 'A';    ///
const int updateRate = 30;

// define a variable/byte structure for our message 
typedef struct {
  char nodeID;   // the node where analog vals are measured
  char msgID;      // what kind of message - 'a' for analogIns data
  int val0, val1, val2, val3;   
 
} myMessage;

void setup()
{
 
  Serial.begin(115200); 

  rf12_initialize(myNodeID, RF12_868MHZ, 193);

  //delay(50);
  //Serial.print("JN "); Serial.print(myNodeID); Serial.println(": RF init done.");
  //delay(50);

}



void loop()
{   
 
   readAnalogIns();
   
  // COMMENT/UNCOMMENT AS NEEDED:      
          // send direct via USB / ArduinoSMS
  //sendAnalogSMS();
          // send via RF
  sendAnalogRF();

  delay(updateRate); 
}

void readAnalogIns() {
  
  sens0 = analogRead(A0);
  sens1 = analogRead(A1);
  sens2 = analogRead(A2);
  sens3 = analogRead(A3);
  
}


void sendAnalogSMS() { 
  messageSendChar(myNodeID);
  messageSendChar('a');
  messageSendInt(sens0); 
  messageSendInt(sens1);
  messageSendInt(sens2); 
  messageSendInt(sens3); 
 
  messageEnd(); // Terminate the message being sent
}

void sendAnalogRF() {
  
  rf12_recvDone();
  
  myMessage myMsg; 

  myMsg.nodeID = myNodeID;  
  myMsg.msgID = 'a'; // a for analog in case other message types will be created at some point (e.g. buttons)    
  myMsg.val0 = sens0; 
  myMsg.val1 = sens1; 
  myMsg.val2 = sens2; 
  myMsg.val3 = sens3; 

  
  if(rf12_canSend() ){
    rf12_sendStart(0, &myMsg, sizeof myMsg);
  //  Serial.println(">");  // so LED blinks when sending
  } else {
      Serial.println("RF could not send");
  }
}

