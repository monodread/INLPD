#include <SimpleMessageSystem.h> 

int sens0 = 0;
int sens1 = 0;
int sens2 = 0;
int sens3 = 0;

void setup()
{
 Serial.begin(115200); 
}


void loop()
{
  readAnalogIns();
  sendValuesSMS();
  delay(20); // controls polling rate
}


void readAnalogIns()
{
 sens0 = analogRead(A0);
 sens1 = analogRead(A1);
 sens2 = analogRead(A2);
 sens3 = analogRead(A3);
  
}


void sendValuesSMS() {
  messageSendInt(sens0);  
  messageSendInt(sens1);
  messageSendInt(sens2);
  messageSendInt(sens3);
  messageEnd();
}
