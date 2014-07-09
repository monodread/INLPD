
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
q.trig0tresh = 0.1; // change the sensitive for trigger here
q.arduinoOldVals = {0}.dup(4);
);
/////////////////////////
Ndef(\testsine).ar(2)

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
q.myInterface.action = { |... msg| msg.postln;};
q.myInterface.action = nil; // temporarily erase the action function
/*[-1,2,3].isNegative
	if(capSenseVals.isNegative && (capSenseVals != (-2))) {
		capSenseVals = capSenseVals + (2**15);
		};
	capSenseVals = capSenseVals / 2**14;
*/

(
q.myInterface.action = { |... msg|
	var capSenseVals, trig, trigHold, holdOn;
	capSenseVals = msg.asInteger; // write them to storage
	capSenseVals = capSenseVals.abs / (2**15);
	capSenseVals.round(0.001).postln;

	trig = ((capSenseVals[0] > q.trig0tresh) && (q.arduinoOldVals[0] < q.trig0tresh));
	trigHold = (capSenseVals[0] > q.trig0tresh);// && (myVals[0] !== q.arduinoOldVals[0]); // alternativer trigger: bleibt an
	// Mapping
	Ndef(\testsine).set(\freq, \freq.asSpec.map(capSenseVals[0])); // To many low values
//	Ndef(\testsine).set(\freq, capSenseVals[0].linexp(0.00001,10,300,7000));
	Ndef(\testsine).set(\pan, \pan.asSpec.map(capSenseVals[1]));
	// simple trigger
//	if(trig)  { "neuer trigger!".postln; Ndef(\testsine).set(\t_trig, 1);};
	if(trigHold)  { capSenseVals[0].round(0.01).postln;Ndef(\testsine).set(\hold, 1);} {Ndef(\testsine).set(\hold, 0)};

	q.arduinoOldVals = capSenseVals;
};

Ndef(\testsine).play;

)
