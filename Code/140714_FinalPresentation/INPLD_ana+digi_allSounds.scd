// THIS PATCH IS EXPECTING ONLY VALUES FROM DIGITAL PINS (not analog ins)
Server.killAll;
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
/*q.controlBus = q.controlBus ? Bus.control(s, 12);
~busval = NodeProxy.control(s,1);
~busval = NodeProxy.for(q.controlBus);*/
);
// create treshhold values and set latency down
(
s.latency = nil;
6.do{|i| var initval=0.3; var name=("trig"++i++"thresh").asSymbol; q.put(name, initval);};
q.arduinoOldVals = {0}.dup(12);
// q.controlBus.setn(q.arduinoOldVals);
);

// create guis for better monitoring
(
NdefMixer.new(s);
PdefAllGui.new;
TdefAllGui.new;
"INPLD_Sounds.scd".loadRelative;
);

/////////////////////////
/*
q.myInterface.action = { |... msg| msg.postln;};
q.myInterface.action = nil; // temporarily erase the action function
// re"boot"
SerialPort.closeAll;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
*/
/////////////////////////

(
// change the sensitive for trigger
q.trig0thresh = 0.25;
q.trig1thresh = 0.25
;
q.trig2thresh = 0.25;
q.trig3thresh = 0.25;
q.trig4thresh = 0.25;
q.trig5thresh = 0.25;
)

q.verbose = true; // see all incoming values (fast)
q.verbose = false;
(
q.myInterface.action = { |... msg|
	var analogVals, digitalVals, trig1, trig2, trig3, trig4, trig5, trig6;
	//msg[0].postln;
	msg = msg.asInteger;
	analogVals = (msg.asInteger.keep(6));
	analogVals = analogVals / 1023; // Normalize Analog Vals
	digitalVals = msg.asInteger.drop(6);
	digitalVals = digitalVals.abs / (2**8); // NORMALIZE THE DIGITAL VALS
	if(q.verbose) {
		"DigitalValues: %\n".postf(digitalVals.round(0.001));
		"Analog Values: %\n".postf(analogVals.round(0.01))
	};

//	try {
		//		Bus(\control, q.controlBus.index).set(analogVals ++ digitalVals);
		// DEFINE OUR TRIGGERS HERE
		trig1 = (digitalVals[0] > q.trig0thresh);
		trig2 = ((digitalVals[1] > q.trig1thresh) && (q.arduinoOldVals[7] < q.trig1thresh));
		trig3 = (digitalVals[2] > q.trig2thresh && (q.arduinoOldVals[8] < q.trig2thresh));
		trig4 = ((digitalVals[3] > q.trig3thresh) && (q.arduinoOldVals[9] < q.trig3thresh));
		trig5 = ((digitalVals[4] > q.trig4thresh) && (q.arduinoOldVals[10] < q.trig4thresh));
		trig6 = ((digitalVals[5] > q.trig5thresh) && (q.arduinoOldVals[11] < q.trig5thresh));
		// TRIGGERING SOUNDS

		if(trig1)  { "Trigger 1! val: %\n".postf(digitalVals[0].round(0.01)); Ndef(\testsine).play; Ndef(\testsine).set(\trigger, 1);} {Ndef(\testsine).set(\trigger, 0)};
		// The doorbells
		if(trig2) { var tdef=Tdef(\WindyDoorbell); if(tdef.isPlaying) {tdef.stop} {tdef.reset.play; ('instrument': 'press2', 'amp': 0.15, 'p0': 1, 'p1': 0.1, 'sustain': 0.4, 'freq': 4000.rand + 2000, 'ratio': 0.7).play;}; "Trigger 2!".postln; };
		// the drone sound
		if(trig3) {	var ndef = Ndef(\klankinger); if(ndef.isPlaying) {"stopped".postln; ndef.end} {
			ndef.play; ndef.set(\trig, 1)}
		};
		// the bubble rhythm
		if(trig4) { var name=\bubbleDance; var pdef= Pdef(name);
			"Trigger 4".postln;
			if(pdef.isPlaying) {pdef.stop} {"Play Pdef".postln; pdef.play
			}
		};
		// the woodpecker sound
		if(trig5) { var tdef=Tdef(\MorseCode); "Trigger 5 !".postln;
			if(tdef.isPlaying) {tdef.stop} {tdef.reset.play};
			(instrument: \delta_demand2,
				start: 0.05,
				grow: 0.93,
				num: 20,
				freq: rrand(2000, 4000),
				dcy: 0.05,
				amp: 0.2
			).play;
		};
		// the feed Drift Comb
		if(trig6) { var tdef=Tdef(\feedDrift); if(tdef.isPlaying) {tdef.stop} {tdef.reset.play;
			(instrument: \feedDriftComb, freq: 1500, sustain: 0.5, amp: 0.1, driftFreq: 20).play;
			};
			"Trigger 6 - FeedDrift".postln;
		};

		// MODIFYING SOUNDS
		Ndef(\testsine).set(
			\freq, analogVals[0].linexp(0,1,80, 6000).lag(0.1),
			\saw, analogVals[1].linexp(0,1,0.01,5).lag(0.1),
			\noise, analogVals[2].linexp(0,1,0.1,2).lag(0.1),
			\reso, analogVals[3].linexp(0,1,0.001,1).lag(0.1)
		);

		Tdef(\WindyDoorbell).set(
			\freqscale, (analogVals[0].linlin(0,1,1,0.1)),
			// \ratio, analogVals[1].linexp(0,1, 2, 0.01),
			\sustain, analogVals[3].linlin(0,1, 1.3, 0.1),
			\noise, analogVals[2].linlin(0,1,0.1,2),
			\wait, analogVals[3].linlin(0,1, 1, 0.1)
		);
		Ndef(\klankinger).set(
			\ringscale, analogVals[1].linlin(0,1, 0.1, 100),
			\bassvol, analogVals[2].linexp(0,1, 0.001, 0.5),
			\osc, analogVals[0].linexp(0,1, 0.3, 12),
			\ampl, analogVals[3].linexp(0,1,0.1,1)
		);
		Pbindef(\bubbleDance,
			'sustain', analogVals[0].linexp(0,1,0.1,2),
			// Pn(Pfunc{ var valArray=q.controlBus.get; valArray[0]}, inf) + 0.1,
			//Prand([0.001, 0.002, 0.003, 0.004, 0.005, 0.006, 0.01, 0.02, 0.03],60),
			'freq', Prand([1000, 2000, 3000, 3500], 120) * analogVals[1].linlin(0,1,
				2, 0.1),
			'rise', Prand([4, 8, 10], 120) * analogVals[2].linlin(0,1,0.5,5),
			//	'where', Pseq([0, 1, 2, 3], inf),
			'dur', Pseq([0.1, 0.4, 0.2, 0.1], inf) * analogVals[3].linlin(0,1,2,0.2)
		).trace;

		Tdef(\MorseCode).set(
			\start, analogVals[0].linexp(0,1,0.01,0.1),
			\grow, analogVals[1].linlin(0,1,0.9,2.2),
			\num, analogVals[2].linlin(0,1,60,120),
			\freq, analogVals[3].linexp(0,1,600,2000)
		);

		Tdef(\feedDrift).set(
			\freq, analogVals[0].linexp(0,1,800,3000),
			\sustain, analogVals[1].linexp(0,1,0.1,1),
			// \amp, 0.1,
			\driftFreq, analogVals[2].linlin(0,1,10,30),
			\dur, analogVals[3].linlin(0,1,0.1,1)
		);



		q.arduinoOldVals = analogVals ++ digitalVals;
//	} { "There was an exception!\n".postln; msg.postln; }
};


)
