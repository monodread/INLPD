SerialPort.closeAll; // close all opened ports, takes 2 sec!

(
q = q ? ();
SerialPort.devicePattern = "/dev/tty.usb*";
q.myPort = SerialPort.devices[0];
//q.myPort = "/dev/tty.usbserial-A900abYo";
q.baudrate = 115200;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE

);

(
s.latency = nil;
q.trig0tresh = 0.2; // change the sensitive for trigger here
q.arduinoOldVals = {0}.dup(4);
);
/////////////////////////
Ndef(\testsine).ar(2)

(
Ndef(\testsine, {|freq=440, amp=0.5, sustain=1, hold=1|
	var son, env;
	env = Env([0.0, 1.0, 0.5, 0.0], [0.01, 0.8, 0.1, 0.1], -4, 2);
	env = EnvGen.kr(env, hold, timeScale:sustain); // t_trig for simple triggers
	son = SinOsc.ar(freq!2 * (env**1)).tanh;
	LeakDC.ar(son) * amp
});
)

(
Ndef(\perc).addSpec(\sustain, [0.01, 5.0, \exp]);
NdefGui(Ndef(\testsine));
)
/////////////////////////

q.myInterface.action = nil; // temporarily erase the action function

(
q.myInterface.action = { |... msg|
	var myVals, trig, trigHold, holdOn;
	myVals = msg.asInteger/1023;
	trig = ((myVals[0] > q.trig0tresh) && (q.arduinoOldVals[0] < q.trig0tresh));
	trigHold = (myVals[0] > q.trig0tresh);// && (myVals[0] !== q.arduinoOldVals[0]); // alternativer trigger: bleibt an
	//postings
	// myVals.round(0.01).postln;
	// myVals[0].postln;
	// msg.postln;
	// Mapping
	Ndef(\testsine).set(\freq, \freq.asSpec.map(myVals[0]));
		// myVals[0].linexp(0,1, 400,10000));
	// simple trigger
//	if(trig)  { "neuer trigger!".postln; Ndef(\testsine).set(\t_trig, 1);};
	if(trigHold)  { myVals[0].round(0.01).postln;Ndef(\testsine).set(\hold, 1);} {Ndef(\testsine).set(\hold, 0)};
	q.arduinoOldVals = myVals;
};

Ndef(\testsine).play;

)
