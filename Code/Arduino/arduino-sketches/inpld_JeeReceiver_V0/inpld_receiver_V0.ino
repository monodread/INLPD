

// Include the SimpleMessageSystem library
#include <SimpleMessageSystem.h> 
#include <Ports.h>
#include <RF12.h>

int myNodeID = 7;    // receiverID


typedef struct {
  char nodeID;   // the node where analog vals are measured
  char msgID;      // what kind of message - 'a' for analogIns data
  int val0, val1, val2, val3;   
 
} myMessage;


void setup() {
  Serial.begin(115200); 
 
  rf12_initialize(myNodeID, RF12_868MHZ, 193);
  Serial.println("receiver, radio is on.");

}

void loop() {
  
  //delay(5);
  if (rf12_recvDone() && rf12_crc == 0) {
    // a packet has been received

    // check data header and choose struct accordingly
    if(rf12_data[1] == 'a'){

      // get data
      myMessage* msg = (myMessage*) rf12_data;

      messageSendChar(msg->nodeID);
      messageSendChar(msg->msgID);
      messageSendInt(msg->val0);
      messageSendInt(msg->val1);
      messageSendInt(msg->val2);      
      messageSendInt(msg->val3);      
     
      messageEnd(); // Terminate the message being sent
    }
    else
      // other types here
    {
      Serial.print("undefined msg type: ");
      Serial.print(rf12_data[1]);
      Serial.print(" from ");
      Serial.println(rf12_data[0]);
    } 
  }

  
}



