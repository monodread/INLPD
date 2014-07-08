
(
SerialPort.closeAll; // close all opened ports
q = q ? ();
q.myPort = "/dev/tty.usbserial-A900abYo";
q.baudrate = 115200;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE

);

(
s.latency = nil;
q.trig0tresh = 0.97; // change the sensitive for trigger here
q.arduinoOldVals = {0}.dup(4);
);

(
q.myInterface.action = { |... msg|
	var myVals = msg/1023;

	var trig = ((myVals[0] > q.trig0tresh) && (q.arduinoOldVals[0] < q.trig0tresh));
	//simple posting
		 //msg.postln;
		 //myVals.postln;
		 //trig.postln;

	if(trig)  { "neuer trigger!".postln; Ndef(\perc).set(\t_trig, 1);};

	q.arduinoOldVals = myVals;

};
)

// they are saved here now, execute line repeatedly to see changes...
q.arduinoVals;

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
	son = SinOsc.ar(freq * (env**0.5),0,dist).tanh;
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











