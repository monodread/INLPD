// THIS PATCH IS EXPECTING ONLY VALUES FROM DIGITAL PINS (not analog ins)

SerialPort.closeAll; // close all opened ports, takes 2 sec!
s.boot;

////////////////////////
(
q = q ? ();
SerialPort.devicePattern = "/dev/tty.usb*";
q.myPort = SerialPort.devices[0];
//q.myPort = "/dev/tty.usbserial-A900abYo";  // obsolete now
q.baudrate = 115200;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
q.verbose=false;
);

(
s.latency = nil;
q.trig0tresh = 0.007; // change the sensitive for trigger here
q.arduinoOldVals = {0}.dup(4);
);
/////////////////////////
Ndef(\testsine).ar(2);

(
Ndef(\testsine, {|freq=440, amp=0.5, sustain=1, hold=1, pan=0, saw=0.3|
	var son, env;
	env = Env([0.0, 1.0, 0.5, 0.0], [0.01, 0.8, 0.1, 0.1], -4, 2);
	env = EnvGen.kr(env, hold, timeScale:sustain); // t_trig for simple triggers
	son = Mix(SinOsc.ar(freq * env) + Saw.ar(freq * env, saw)).tanh;
	Pan2.ar(LeakDC.ar(son) * amp, pan)
});
)

(
Ndef(\testsine).addSpec(\sustain, [0.01, 5.0, \exp]);
Ndef(\testsine).addSpec(\saw, [0.001, 2.0, \exp]);
Ndef(\testsine).addSpec(\hold, [0, 1, \lin, 1]);
NdefGui(Ndef(\testsine));
)
/////////////////////////
/*
q.myInterface.action = { |... msg| msg.postln;};
q.myInterface.action = nil; // temporarily erase the action function
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
[-1,2,3].isNegative
	if(digitalVals.isNegative && (digitalVals != (-2))) {
		digitalVals = digitalVals + (2**15);
		};
	digitalVals = digitalVals / 2**14;
*/
/////////////////////////
q.verbose = true;
q.verbose = false;
(
q.myInterface.action = { |... msg|
	var analogVals, digitalVals, trig, trigHold, holdOn;
	digitalVals = msg.asInteger.drop(6); // write them to storage
	digitalVals = digitalVals.abs / (2**8);
	if(q.verbose) {digitalVals.round(0.001).postln;};

	trig = ((digitalVals[0] > q.trig0tresh) && (q.arduinoOldVals[0] < q.trig0tresh));
	trigHold = (digitalVals[0] > q.trig0tresh);// && (myVals[0] !== q.arduinoOldVals[0]); // alternativer trigger: stays on while touching
	// Mapping
//	Ndef(\testsine).set(\freq, \freq.asSpec.map(digitalVals[0])); // To many low values
	Ndef(\testsine).set(\freq, digitalVals[0].linexp(0.00001,10, 6300,200));
	Ndef(\testsine).set(\pan, \pan.asSpec.map(digitalVals[1]));
	// simple trigger
//	if(trig)  { "neuer trigger!".postln; Ndef(\testsine).set(\t_trig, 1);};
	if(trigHold)  { digitalVals[0].round(0.01).postln;Ndef(\testsine).set(\hold, 1);} {Ndef(\testsine).set(\hold, 0)};

	q.arduinoOldVals = digitalVals;
};

Ndef(\testsine).play;

)
