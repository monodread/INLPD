// THIS PATCH IS EXPECTING ONLY VALUES FROM DIGITAL PINS (not analog ins)
Serer.killAll;
SerialPort.closeAll; // close all opened ports, takes 2 sec!
s.boot;

///// BOOOOOT SERVER!

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
q.trig0thresh = 0.3; // change the sensitive for trigger1 here
q.trig1thresh = 0.35; // change the sensitive for trigger2 here
q.trig2thresh = 0.35; // change the sensitive for trigger3 here
q.trig3thresh = 0.35; // change the sensitive for trigger4 here
q.trig4thresh = 0.35; // change the sensitive for trigger5 here
q.trig5thresh = 0.35; // change the sensitive for trigger6 here
q.arduinoOldVals = {0}.dup(4);
);
/////////////////////////
(
Ndef(\testsine).ar(2);

(
Ndef(\testsine, {|freq=440, amp=0.5, sustain=1, hold=1, pan=0, saw=0.3|
	var son, env;
	env = Env([0.0, 1.0, 1, 0.0], [0.01, 0.8, 0.1, 0.1], -4, 2);
	env = EnvGen.kr(env, hold, timeScale:sustain); // t_trig for simple triggers
	son = Mix(SinOsc.ar(freq * env) + Saw.ar(freq * env, saw)).tanh;
	Pan2.ar(LeakDC.ar(son) * amp, pan)
});
);

(
Ndef(\testsine).addSpec(\sustain, [0.01, 5.0, \exp]);
Ndef(\testsine).addSpec(\saw, [0.001, 2.0, \exp]);
Ndef(\testsine).addSpec(\hold, [0, 1, \lin, 1]);
NdefGui(Ndef(\testsine));
);
)
/////////////////////////
/*
q.myInterface.action = { |... msg| msg.postln;};
q.myInterface.action = nil; // temporarily erase the action function
// re"boot"
SerialPort.closeAll;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
*/
/////////////////////////
/*
q.trig0thresh = 0.3; // change the sensitive for trigger1 here
q.trig1thresh = 0.35; // change the sensitive for trigger2 here
q.trig2thresh = 0.3; // change the sensitive for trigger3 here
q.trig3thresh = 0.35; // change the sensitive for trigger4 here
q.trig4thresh = 0.35; // change the sensitive for trigger5 here
q.trig5thresh = 0.35; // change the sensitive for trigger6 here
*/
q.verbose = true;
q.verbose = false;
(
q.myInterface.action = { |... msg|
	var analogVals, digitalVals, trig1, trig2, trig3, trig4, trig5, trig6, holdOn;
		//msg[0].postln;

	msg = msg.asInteger;
	analogVals = (msg.asInteger.keep(6));
	analogVals = analogVals / 1023; // Normalize Analog Vals
	digitalVals = msg.asInteger.drop(6);
	digitalVals = digitalVals.abs / (2**8); // NORMALIZE THE DIGITAL VALS
	if(q.verbose) {"DigitalValues: %\n".postf(digitalVals.round(0.001));
	"Analog Values: %\n".postf(analogVals.round(0.01))};
	//digitalVals[2].postln; // post one sensor
	try {
		// DEFINE OUR TRIGGERS HERE
	trig1 = (digitalVals[0] > q.trig0thresh);
	trig2 = ((digitalVals[1] > q.trig1thresh) && (q.arduinoOldVals[1] < q.trig1thresh));
	trig3 = (digitalVals[2] > q.trig2thresh);
    trig4 = (digitalVals[3] > q.trig3thresh);
		// TRIGGERING SOUNDS
	if(trig1)  { digitalVals[0].round(0.01).postln;Ndef(\testsine).set(\hold, 1);} {Ndef(\testsine).set(\hold, 0)};
		if(trig2) { var tdef=Tdef(\WindyDoorbell); if(tdef.isPlaying) {tdef.stop} {tdef.reset.play};"Trigger Tdef!".postln};
	/*	if(trig3) {
			var pdef=Pdef(\Resonance_Jas); if(pdef.isPlaying){pdef.stop}{pdef.play}}; //{"Trigger low: %\n".postf(digitalVals[2])};*/

		if(trig3) {	var ndef = Ndef(\klankinger);
			//if(ndef.isPlaying) {ndef.set(\i_freq, 2000);ndef.rebuild;} {
			ndef.set(\trig, 1, \freq, digitalVals[3].linexp(0,1,400,4000), \noise, analogVals[3].linlin(0,1,1,3), \att,0.2, \dcy,analogVals[1] * 3, \ffreq,\freq.asSpec.map(analogVals[2]), \ampl,1)
		//}
		} {Ndef(\klankinger).set(\trig, 0);};

		if(trig4) { var tdef=Tdef(\MorseCode); if(tdef.isPlaying) {tdef.stop} {tdef.reset.play};


	// MODIFYING SOUNDS
//	Ndef(\testsine).set(\freq, \freq.asSpec.map(digitalVals[0])); // To many low values
	Ndef(\testsine).set(\freq, digitalVals[0].linexp(0.00001,10, 1500,2200), \saw, digitalVals[0].linlin(0.00001, 5, 0.1, 2));

	Ndef(\testsine).set(\pan, \pan.asSpec.map(digitalVals[1]));

	Tdef(\WindyDoorbell).set(
			//\repeats, (analogVals[0].linlin(0,1,10,1)).round(1),
			\ratio, analogVals[1].linlin(0,1, 3,0.1),
			\sustain, analogVals[2].linexp(0,1,2,0.1),
			\wait, analogVals[3].linlin(0,1, 1, 0.1)
		);
		if((analogVals[0]>0.5) && (analogVals[1]>0.5)) {
			"trigger p1 and p0".postln;
			Tdef(\WindyDoorbell).set(\p1, analogVals[2], \p0,analogVals[1]);};

	q.arduinoOldVals = digitalVals;
		} {
		"There was an exception!".postln;
		msg.postln;
	}
};

Ndef(\testsine).play;

)

////////////////////////////////////////////////
(
Tdef(\WindyDoorbell).gui;
Tdef(\WindyDoorbell).set(\repeats, 10, \ratio, 1, \sustain, 3, \wait, 0.6, \p0, 1, \p1, 0.5);
Spec.add(\repeats, [1,20,\lin]);
Spec.add(\ratio, [0.01,3,\exp]);
Spec.add(\sustain, [0.01,10,\exp]);
Spec.add(\wait, [0.1,1,\exp]);

(
Tdef(\WindyDoorbell, {|env|
	env[\repeats].do{
		( 'instrument': 'press2', 'amp': 0.5, 'p0': env[\p0], 'p1': env[\p1], 'sustain': env[\sustain], 'freq': 4000.rand + 2000, 'ratio': env[\ratio]).play;
		(env[\wait]).wait;
	}



}).play;
);
// i_freq=200, trig=1, att=0.2, dcy=2, ffreq=2000, ampl=0.4;

(
Pdef(\Resonance_Jas,
	Pbind(
		'instrument', 'klankinger',
		'i_freq', Prand([200, 400, 800, 1600], 30),
		'trig', 1,
		'att', 0.2,
		'dcy', Prand([1, 2, 3], 20),
		'ffreq', Prand([2000, 4000, 8000], 40),
		'ampl', 5 * Prand([0.5, 0.6, 0.7, 1, 1.5, 1.7], 40),
	/*	'harm', [ 1, 2, 3, 4 ],
		'amp', [ 0.05, 0.05, 0.05, 0.05 ],
		'ring', [ 1, 1, 1, 1 ]*/
	)
).play;
);

// Sounds needed:
(
SynthDef('press2', { |out, amp = 0.1, p0 = 1, p1 = 0, sustain = 10, freq = 4000, ratio = 2|
	var pressure, son, map, n = 4;
	pressure = EnvGen.ar(Env.new([p0, p1.max(0.0001)], [sustain], [\exp]), doneAction: 2);
	map = { |i|
		var a = rrand(0.0, 1.0).postln;
		InRange.ar(pressure, a, a + 0.1) * SinOsc.ar(rand(9000, 12000), 0, 0.1)
	} ! n;
	son = Crackle.ar(pressure.linlin(1, 0, 1.32, 1.99) + [0, Rand(0, 0.001)]);
	freq = pressure.linlin(1, 0, freq * ratio, freq) * LFNoise1.kr(80,  1-pressure * 0.1, 1);
	son = Ringz.ar(son, freq, 0.01);
	son = son + map.sum;
	Out.ar(out, son * pressure * (amp * 5))
}).add;
);
(
SynthDef('klankinger', { arg out=0, i_freq=200, trig=1, att=0.2, dcy=2, ffreq=2000, ampl=0.4;
	var klank, n, harm, ring, env, amp;
	n = 9;
	harm = Control.names([\harm]).ir(Array.series(4,1,1));
	amp =  Control.names([\amp]).ir(Array.fill(4,0.05));
	ring = Control.names([\ring]).ir(Array.fill(4,1));
	klank = Klank.ar(`[harm,amp,ring], {ClipNoise.ar(0.003)}.dup, i_freq);
	klank = LPF.ar(klank, ffreq + SinOsc.kr([3,4],0, 300, 1000));
	env = EnvGen.kr( Env.new([0,1,0],[att, dcy]), trig, doneAction:2);
	Out.ar(out, klank * env * ampl);
}).add;
);
// same as SynthDef
(
Spec.add(\ffreq, \freq);
Ndef('klankinger', { arg freq=1, noise=1, trig=1, att=0.2, dcy=2, ffreq=2000, ampl=0.4;
	var klank, n, harm, ring, env, amp;
	n = 9;
	harm = Control.names([\harm]).ir(Array.series(4,1,1));
	amp =  Control.names([\amp]).ir(Array.fill(4,0.2));
	ring = Control.names([\ring]).ir(Array.fill(4,1));
	klank = DynKlank.ar(`[harm,amp,ring], {ClipNoise.ar(0.01*noise)}.dup, freq);
	klank = LPF.ar(klank, ffreq + SinOsc.kr([3,4],0, 300, 1000));
	env = EnvGen.kr( Env.new([0,1,0],[att, dcy],'lin', 1), trig);
	klank * env * ampl
}).play
);
NdefMixer.new(s);
);