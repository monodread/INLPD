/*
Server.killAll;
SerialPort.closeAll; // close all opened ports, takes 2 sec!
*/
////////////////////////
s.waitForBoot({
Task({
q = q ? ();
SerialPort.devicePattern = "/dev/tty.usb*";
q.myPort = SerialPort.devices[0];
//q.myPort = "/dev/tty.usbserial-A900abYo";  // obsolete now
q.baudrate = 115200;
try { q.myInterface = ArduinoSMS(q.myPort, q.baudrate); };  // OPEN ONCE 
q.verbose=false;

// create treshhold values and set latency down
s.latency = nil;
6.do{|i| var initval=0.3; var name=("trig"++i++"thresh").asSymbol; q.put(name, initval);};
// q.arduinoOldVals = {0}.dup(12);
q.digitalOldVals = {0}.dup(6);
q.analogOldVals = {0}.dup(6);
s = r.myServer;
Ndef.defaultServer = s;

1.wait;
// create guis for better monitoring
(
s.meter;
// PdefAllGui.new;
// TdefAllGui.new;
(
// load sounds and mixer
Ndef.clear;
Tdef.all.clear;
Pdef.all.clear; 
try {q.mixer.close };
q.mixer = NdefMixer.new(s, 3);
// "/Users/monodread/MEINEDATEN/PROJEKTE/programming/github/MyRepos/INLPD/Code/140714_FinalPresentation/INPLD_Sounds.scd".loadDocument;
"INPLD_Sounds.scd".loadRelative;
);
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
1.wait;
q.sound01.set(\trigger, 0);

/////////////////////////
/*
// THIS IS WHEN HOT SWAPPING THE ARDUINO or in case of error

q.myInterface.action = nil; // temporarily erase the action function
// re"boot"
SerialPort.closeAll;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
q.myInterface.action = { |... msg| msg.postln;};
*/
/////////////////////////
// Faders for sensitivity! 

(
q.trigSetWin=Window.new("Trigger Sensitivity", Rect(100, 50, 320, 300)).front;
q.trigSetWin.view.decorator=FlowLayout(q.trigSetWin.view.bounds);
q.trigSetWin.view.decorator.gap=2@2;

Spec.add(\thresh, [0.01,6.0, \exp]);

7.do{ |i| var label="Threshold_"++i++"   "; var color=Color.rand; 
	var func={|slider| var thresh=("trig"++i++"thresh").asSymbol; q.put(thresh, slider.value); "New threshold for Trigger % : % \n".postf(i, slider.value); 
	};
	var slidername=("slider"++"trig"++i++"thresh").asSymbol; var slider;

// last fader sets all: 
	if(i==6) {label="Set all Thresh"; color=Color.red; func = {|slider| 6.do{|j| var thresh=("trig"++j++"thresh").asSymbol; var slidername=("slider"++"trig"++j++"thresh").asSymbol;
		q.put(thresh, slider.value); "Set threshold for ALL! : % \n".postf(slider.value); q.at(slidername).value_(slider.value); }
	} };
	
	slider = EZSlider(q.trigSetWin, 300@30,label, \thresh, func, labelWidth: 70, unitWidth: 0,initVal:0.0, numberWidth:40, labelHeight:70, layout:\horz)
	.setColors(Color.black,Color.white, sliderBackground: color, knobColor: Color.black, numNormalColor: Color.black)
	.font_(Font("Helvetica",11))
	.visible_(true);
	q.put(slidername, slider);

};

// add a button to start and stop the sound.
q.startButton = Button(q.trigSetWin, 120 @ 40).font_(Font("Helvetica-Bold",20));
q.startButton.states = [
	["See Values", Color.white, Color.green(0.7)],
	["Hide Values", Color.white, Color.red(0.7)]
];
q.startButton.action = {|view|
		if (view.value == 1) {
			q.verbose = true;
		} {
			q.verbose = false;
		};
};
// a button to stop sound
q.muteButton = Button(q.trigSetWin, 120 @ 40).font_(Font("Helvetica-Bold",20));
q.muteButton.states = [
	["Stop Sound", Color.white, Color.red(0.7)]
];
q.muteButton.action = {|view|
			"Pressed".postln;
			Pdef.all.keys.do{|name| Pdef(name).stop};
			Tdef.all.keys.do{|name| Tdef(name).stop};
			try{ Ndef.all[r.myServer.asSymbol].activeProxies.do{|proxyname| Ndef.all[r.myServer.asSymbol][proxyname].end(0.2); } }; 
};
// set the sliders to their actual values
6.do{|i| var slidername=("slider"++"trig"++i++"thresh").asSymbol;
	var threshval = q.at(("trig"++i++"thresh").asSymbol); q.at(slidername).value_(threshval);
};

);
"	Waiting to do arduino Function".postln;
3.wait;
/////////////////////////
// ARDUINO ACTION DEFINED HERE
(
try{
q.myInterface.action = { |... msg|
	var analogVals, digitalVals, trig1, trig2, trig3, trig4, trig5, trig6;
	//msg[0].postln;
	msg = msg.asInteger;
	analogVals = (msg.asInteger.keep(6));
	analogVals = analogVals / 1023; // Normalize Analog Vals
	digitalVals = msg.asInteger.drop(6);
	digitalVals = digitalVals.abs / (2**12); // NORMALIZE THE DIGITAL VALS, /2**12 goes up to 7.5 max
	if(q.verbose) {
		"DigitalValues: %\n".postf(digitalVals.round(0.001));
		"Analog Values: %\n".postf(analogVals.round(0.01))
	};

//try {
		//		Bus(\control, q.controlBus.index).set(analogVals ++ digitalVals);
		// DEFINE OUR TRIGGERS HERE
		trig1 = (analogVals[0] > q.trig0thresh);
		trig2 = ((analogVals[1] > q.trig1thresh) && (q.analogOldVals[1] < q.trig1thresh));
		trig3 = (analogVals[2] > q.trig2thresh && (q.analogOldVals[2] < q.trig2thresh));
		trig4 = ((analogVals[3] > q.trig3thresh) && (q.analogOldVals[3] < q.trig3thresh));
		trig5 = ((analogVals[4] > q.trig4thresh) && (q.analogOldVals[4] < q.trig4thresh));
		trig6 = ((analogVals[5] > q.trig5thresh) && (q.analogOldVals[5] < q.trig5thresh));
		// TRIGGERING SOUNDS

		if(trig1)  { "Trigger 1! val: %\n".postf(analogVals[0].round(0.01)); q.sound01.play; q.sound01.set(\trigger, 1);} {q.sound01.set(\trigger, 0)};
		// The doorbells
		if(trig2) { if(q.sound02.isPlaying) {q.sound02.stop} {q.sound02.reset.play; ('instrument': 'press2', 'amp': 0.15, 'p0': 1, 'p1': 0.1, 'sustain': 0.4, 'freq': 4000.rand + 2000, 'ratio': 0.7).play;}; 
		 "Trigger 2! val: %\n".postf(analogVals[1].round(0.01));};
		// the drone sound
		if(trig3) {if(q.sound03.isPlaying) {"stopped".postln; q.sound03.end} {
			q.sound03.rebuild.play; 
			q.sound03.set(\trig, 1);  "Trigger 3! val: %\n".postf(analogVals[2].round(0.01));}
		};
		// the bubble rhythm
		if(trig4) {  "Trigger 4! val: %\n".postf(analogVals[3].round(0.01));if(q.sound04.isPlaying) {q.sound04.stop} {"Play Pdef BUBBLE DANCE".postln; q.sound04.play
			}
		};
		// the woodpecker sound
		if(trig5) {   "Trigger 5! val: %\n".postf(analogVals[4].round(0.01));
						if(q.sound05.isPlaying) {q.sound05.stop} {q.sound05.reset.play};
						// play one sound as notifier
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
			"Trigger 6! val: %\n".postf(analogVals[5].round(0.01));
		};

		// MODIFYING SOUNDS
		q.sound01.set(
			\freq, digitalVals[0].linlin(0.001,5,80, 6000),
			\saw, digitalVals[1].linlin(0.001,5,0.01,5),
			\noise, digitalVals[2].linlin(0,6,0.1,2),
			\reso, digitalVals[3].linexp(0,6,0.001,1)
		);
		q.sound02.set(
			\freqscale, digitalVals[0].linlin(0,6,1,0.1),
			// \ratio, digitalVals[1].linlin(0,6, 2, 0.01),
			\sustain, digitalVals[3].linlin(0,6, 1, 0.1),
			\noise, digitalVals[2].linlin(0.0,2,0.1,2),
			\wait, digitalVals[3].linlin(0,6, 1, 0.1)
		);
		q.sound03.set(
			\ringscale, digitalVals[1].linlin(0.001,7, 0.1, 100),
			\bassvol, digitalVals[2].linlin(0,6, 0.001, 0.5),
			\osc, digitalVals[0].linlin(0,6, 0.3, 12),
			\ampl, digitalVals[3].linlin(0,6,0.1,1)
		);
		Pbindef(\bubbleDance,
			'sustain', digitalVals[0].linlin(0,6,0.1,2),
			// Pn(Pfunc{ var valArray=q.controlBus.get; valArray[0]}, inf) + 0.1,
			//Prand([0.001, 0.002, 0.003, 0.004, 0.005, 0.006, 0.01, 0.02, 0.03],60),
			'freq', Prand([1000, 2000, 3000, 3500], 120) * digitalVals[1].linlin(0,6,
				2, 0.1),
			'rise', Prand([4, 8, 10], 120) * digitalVals[2].linlin(0,6,0.5,5),
			//	'where', Pseq([0, 1, 2, 3], inf),
			'dur', Pseq([0.1, 0.4, 0.2, 0.1], inf) * digitalVals[3].linlin(0,6,3,0.2)
		).trace;

		q.sound05.set(
			\start, digitalVals[0].linlin(0,6,0.01,0.1),
			\grow, digitalVals[1].linlin(0,6,0.9,2.2),
			\num, digitalVals[2].linlin(0,6,60,220),
			\freq, digitalVals[3].linlin(0,6,600,4000)
		);

		q.sound06.set(
			\freq, digitalVals[0].linlin(0,6,800,10000),
			\sustain, digitalVals[1].linlin(0,6,0.1,2),
			// \amp, 0.1,
			\driftFreq, digitalVals[2].linlin(0,6,10,100),
			\dur, digitalVals[3].linlin(0,6,0.05,1)
		);


		q.arduinoOldVals = analogVals ++ digitalVals;
		q.analogOldVals = analogVals;
		q.digitalOldVals = q.digitalOldVals;
//	} { "There was an exception!\n".postln; msg.postln; }
};
};

);
1.wait;
"INPLD_NetworkAddOns.scd".loadRelative;

}).play(AppClock);
});
