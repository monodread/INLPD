/*
Server.killAll;
SerialPort.closeAll; // close all opened ports, takes 2 sec!
*/
////////////////////////
(
q = q ? ();
SerialPort.devicePattern = "/dev/tty.usb*";
q.myPort = SerialPort.devices[0];
//q.myPort = "/dev/tty.usbserial-A900abYo";  // obsolete now
q.baudrate = 115200;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
q.verbose=false;

// create treshhold values and set latency down
s.latency = nil;
6.do{|i| var initval=0.3; var name=("trig"++i++"thresh").asSymbol; q.put(name, initval);};
q.arduinoOldVals = {0}.dup(12);
s = r.myServer;
Ndef.defaultServer = s;
);

// create guis for better monitoring
(
s.meter;
Ndef.clear;
NdefMixer.new(s);
// PdefAllGui.new;
// TdefAllGui.new;
"/Users/monodread/MEINEDATEN/PROJEKTE/programming/github/MyRepos/INLPD/Code/140714_FinalPresentation/INPLD_Sounds.scd".loadDocument;
// "INPLD_Sounds.scd".loadRelative;

// adding this bit because of Republic Version 3.44
// function inlining does not work in if statements?
6.do{ |i| var name=("sound0"++i).asSymbol; q.put(name, 0);};
q.sound01=Ndef(\testsine);
q.sound02=Tdef(\WindyDoorbell);
q.sound03 = Ndef(\klankinger); 
q.sound04=Pdef(\bubbleDance);
q.sound05=Tdef(\MorseCode);
q.sound06=Tdef(\feedDrift);
);

/////////////////////////
/*
// THIS IS WHEN HOT SWAPPING THE ARDUINO or in case of error

q.myInterface.action = { |... msg| msg.postln;};
q.myInterface.action = nil; // temporarily erase the action function
// re"boot"
SerialPort.closeAll;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
*/
/////////////////////////

(
// change the sensitivity for trigger
q.trig0thresh = 0.25;
q.trig1thresh = 0.25;
q.trig2thresh = 0.25;
q.trig3thresh = 0.25;
q.trig4thresh = 0.25;
q.trig5thresh = 0.25;
)

q.verbose = true; // see all incoming values (fast)
q.verbose = false;

/////////////////////////
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

//try {
		//		Bus(\control, q.controlBus.index).set(analogVals ++ digitalVals);
		// DEFINE OUR TRIGGERS HERE
		trig1 = (digitalVals[0] > q.trig0thresh);
		trig2 = ((digitalVals[1] > q.trig1thresh) && (q.arduinoOldVals[7] < q.trig1thresh));
		trig3 = (digitalVals[2] > q.trig2thresh && (q.arduinoOldVals[8] < q.trig2thresh));
		trig4 = ((digitalVals[3] > q.trig3thresh) && (q.arduinoOldVals[9] < q.trig3thresh));
		trig5 = ((digitalVals[4] > q.trig4thresh) && (q.arduinoOldVals[10] < q.trig4thresh));
		trig6 = ((digitalVals[5] > q.trig5thresh) && (q.arduinoOldVals[11] < q.trig5thresh));
		// TRIGGERING SOUNDS

		if(trig1)  { "Trigger 1! val: %\n".postf(digitalVals[0].round(0.01)); q.sound01.play; q.sound01.set(\trigger, 1);} {q.sound01.set(\trigger, 0)};
		// The doorbells
		if(trig2) { if(q.sound02.isPlaying) {q.sound02.stop} {q.sound02.reset.play; ('instrument': 'press2', 'amp': 0.15, 'p0': 1, 'p1': 0.1, 'sustain': 0.4, 'freq': 4000.rand + 2000, 'ratio': 0.7).play;}; "Trigger 2!".postln; };
		// the drone sound
		if(trig3) {if(q.sound03.isPlaying) {"stopped".postln; q.sound03.end} {
			q.sound03.play; q.sound03.set(\trig, 1)}
		};
		// the bubble rhythm
		if(trig4) { "Trigger 4".postln;if(q.sound04.isPlaying) {q.sound04.stop} {"Play Pdef BUBBLE DANCE".postln; q.sound04.play
			}
		};
		// the woodpecker sound
		if(trig5) {  "Trigger 5 !".postln;
			if(q.sound05.isPlaying) {q.sound05.stop} {q.sound05.reset.play};
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
		if(trig6) {  if(q.sound06.isPlaying) {q.sound06.stop} {q.sound06.reset.play;
			(instrument: \feedDriftComb, freq: 1500, sustain: 0.5, amp: 0.1, driftFreq: 20).play;
			};
			"Trigger 6 - FeedDrift".postln;
		};

		// MODIFYING SOUNDS
		q.sound01.set(
			\freq, analogVals[0].linexp(0,1,80, 6000),
			\saw, analogVals[1].linexp(0,1,0.01,5),
			\noise, analogVals[2].linexp(0,1,0.1,2),
			\reso, analogVals[3].linexp(0,1,0.001,1)
		);

		q.sound02.set(
			\freqscale, (analogVals[0].linlin(0,1,1,0.1)),
			// \ratio, analogVals[1].linexp(0,1, 2, 0.01),
			\sustain, analogVals[3].linlin(0,1, 1.3, 0.1),
			\noise, analogVals[2].linlin(0,1,0.1,2),
			\wait, analogVals[3].linlin(0,1, 1, 0.1)
		);
		q.sound03.set(
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

		q.sound05.set(
			\start, analogVals[0].linexp(0,1,0.01,0.1),
			\grow, analogVals[1].linlin(0,1,0.9,2.2),
			\num, analogVals[2].linlin(0,1,60,120),
			\freq, analogVals[3].linexp(0,1,600,2000)
		);

		q.sound06.set(
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
