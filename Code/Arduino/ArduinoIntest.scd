// =====================================================================
// Arduino
//
// This class encapsulates communication with an Arduino I/O
// board. Subclasses handle the details of a specific serial protocol.
//
// When a message arrives (according to the protocol), the 'action'
// instance variable is invoked, with the expanded message contents.
//
// Messages are sent to the board with the 'send' method. it takes any
// number of arguments, the meaning of which again are again protocol
// specific.

// =====================================================================
// SimpleMessageSystem_example_1 (from the SMS distribution)
// see http://www.arduino.cc/playground/Code/SimpleMessageSystem

(
q = ();
// find your port:
SerialPort.listDevices;
q.myPort = "/dev/tty.usbserial-A900abYo";
q.baudrate = 115200;
)
p = ArduinoSMS("/dev/tty.usbserial-A900abYo", 115200); // was 9600 (changed by thor)

p = ArduinoSMS("/dev/tty.usbserial-A900abYo", 115200); // was 9600 (changed by thor)
p.action = { |... msg| msg.postln; }; // this action happens when sending anything!
p.action = nil; // verbose off, silence!

// read digital inputs
p.send($r, $d);

// read analog inputs
p.send($r, $a);

// write digital input 13
p.send($w, $d, 13, 1);
p.send($w, $d, 13, 0);

// flash LED on digital pin 13
(
fork {
	8.do {
		p.send($w, $d, 13, 1);
		1.25.wait;
		p.send($w, $d, 13, 0);
		0.25.wait;
	}
}
)

// write analog output 0
p.send($w, $a, 0, 128);

// close port
p.close;

// =====================================================================
// SimpleMessageSystem_analog_read

p = p ? ArduinoSMS("/dev/tty.usbserial-A1000ecP", 115200);
p.close;

b = Bus.control(s, 4); // set up a bus
p.action = { |... msg| q.sensorIn = msg[2]; msg.postln; b.setn(msg[2])};
b.get
p.action = nil;

Ndef(\testsine).play
Ndef(\testsine).stop

(
Ndef(\testsine, {|freq=440, amp=1| var sensorIn = In.kr(b.index); freq = sensorIn.linexp(0,400, 200,6000);
	SinOsc.ar(freq.poll, 0, sensorIn.linlin(0,100,0.001,1)).softclip * amp}).play
)

// thor reading loop
(
fork {
	100.do {
		p.send($r, $a);
		0.1.wait;
	}
}
)

p.close;

/// There is also ArduinoTSV for tab-separated values
// e.g. in Arduino code:
/*
	Serial.print(millis() - start);        // check on performance in milliseconds
    Serial.print("\t");                    // tab character for debug windown spacing
    Serial.print(total[0]);                  // print sensor output 1
    Serial.print("\t");
    Serial.print(total[1]);                  // print sensor output 2
    Serial.print("\t");
    Serial.print(total[2]);                // print sensor output 3
    Serial.print("\t");
    Serial.println(total[3]);
*/

SerialPort.devices;
a = ArduinoTSV.new( "/dev/ttyACM0", 9600 );
a.action = { |... msg| msg.postln };

a.close;

// EOF
