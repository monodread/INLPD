
(
Server.killAll;

SerialPort.closeAll; // close all opened ports
q = q ? ();
// SerialPort.listDevices;
q.myPort = "/dev/tty.usbserial-A900fsh3"; // this is JeeLinks Serialdriver
q.baudrate = 115200;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE

);

(
s.latency = nil;
q.trig0tresh = 0.6; // change the sensitive for trigger here
q.jeeOldVals = {0}.dup(4);
);

(
q.myInterface.action = { |... msg|
	var myVals, trig, node, index, freqs;
	myVals = (msg.drop(2) / 1023).round(0.001);
	node = msg[0];
	// msg.postln; // whole message
//	[node, myVals].postln; // just the numbers
		 //trig.postln; // the trigger
	// trigger something
 	case
	{node == "A"} { index = 0 }
	{node == "B"} { index = 1 }
	{node == "C"} { index = 2 }
	{node == "D"} { index = 3 };

	freqs = [400,800,1200,1400];
//	trig = ((myVals[0] > q.trig0tresh) && (q.jeeOldVals[0] < q.trig0tresh));
	trig = ((myVals[2] > q.trig0tresh));
	if(trig)  { "neuer trigger!".postln; myVals.postln; Ndef(\perc).set(\t_trig, 1, \freq, freqs[3], \sus, myVals[3]);};


	q.jeeOldVals = myVals;

};
)

// they are saved here now, execute line repeatedly to see changes...
q.jeeOldVals;

// BOOT SERVER
s.boot;

///////////////////////
// SOUND

(
// create sound proxy
Ndef.ar(\perc, 2);

// add some specs
Ndef(\perc).addSpec(\dcy, [0.0001, 1.0, \exp]);
Ndef(\perc).addSpec(\atk, [0.01, 1.0, \exp]);
Ndef(\perc).addSpec(\sus, [0.01, 5.0, \exp]);
Ndef(\perc).addSpec(\rel, [0.01, 1.0, \exp]);
Ndef(\perc).addSpec(\dist, [1, 10, \lin]);
// rest of specs are default

Ndef(\perc, { arg freq=1200, atk=0.01, dcy=0.1, sus=0.2,rel=0.2, dist=4, t_trig=0, sustain=1, amp=0.5, pan=0;
	var son, env;
	env = Env([0.0, 1.0, 0.5, 0.0], [atk, sus, dcy, rel], -4);
	env = EnvGen.kr(env, t_trig, timeScale:sustain);
	son = Saw.ar(freq * (env**0.5),dist).tanh;
	son * env * amp
});


Ndef(\perc).play
);

/////////////////////




/// OTHER
// trig once by hand
Ndef(\perc).set(\t_trig, 1);

NdefMixer.new(s);


// JITLIB livecode sequencing...
Ndef(\perc)[1] = \set -> Pbind(
	\freq, Pseq((1000,1100..3000),inf),
	\dur, 0.25
)

Ndef(\perc)[1] = nil;











