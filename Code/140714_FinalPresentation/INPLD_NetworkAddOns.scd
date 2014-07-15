// Network / Republic Add-Ons for INPLD. 
// 14.7.14
(
// Add some responders:
q.resp = q.resp ? (); 
/*
q.verbose = true;
q.verbose = false;
q.resp[\digitalVals] = OSCresponder(nil, '/setndef', { |t, resp, msg|
		var ndefname, pairs;
		ndefname = msg[1]; // second item in 'msg' is ndefname
		pairs = msg.drop(2); // get rid of 1st and 2nd item in 'msg'
		msg[2].switch(
		\end,{Ndef(ndefname).end(msg[3]);"End %".postf(ndefname);},
		\play,{Ndef(ndefname).play;"Play %".postf(ndefname);},
		{ Ndef(ndefname).xset(*pairs); // * adds the items in the array, not the array itself!
		};
		);
	}).add;
*/

q.myPlayerName = r.myServer.asSymbol;
q.myOSCPath = "/mySensorVals/"++q.myPlayerName;

// listening to my own incoming Data
q.resp[\oscVals] = OSCresponder(nil, q.myOSCPath, { |t, resp, msg|
	if(q.verbose) { "Receiving via OSC: path: %, values: %\n".postf(msg[0], msg[1])};
	}).add;
// one line send MSG: put this into arduino func
r.send(\all, q.myOSCPath, (Array.rand(12,0,1.0)).asCompileString); // string or compilestring?

);

///////// update the Arduino action FUNC for OSC forwarding, just add the one line:
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
	/*
	q.myPlayerName = r.myServer.asSymbol;
	q.myOSCPath = "/mySensorVals/"++q.myPlayerName;
	*/
	try { r.send(\all, q.myOSCPath, (Array.rand(12,0,1.0)).asCompileString) };

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
			q.sound03.play; q.sound03.set(\trig, 1);  "Trigger 3! val: %\n".postf(analogVals[2].round(0.01));}
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
			"OSC Trigger 6! val: %\n".postf(analogVals[5].round(0.01));
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




//////////////////////////
// add responders for the others: 
(
q.addResponders = {|q| 
	r.nameList.do{ |name|
	var playerpath = ("/mySensorVals/"++name).asString.postln;
	var playervals = (name++"OldVals").asSymbol;
	q.resp[name] = OSCresponder(nil, playerpath, { |t, resp, msg|
	if(q.verbose) { "PLAYER: % is sending: values: %\n".postf(name, msg[1])};
	// THE ACTION IN HERE
	q.setSoundsOSC(msg[1].asString, name);
	}).add;
	q.put(playervals, 0!12);
	};
};

q.addResponders(); // call this from time to time to update?
q.jonasOldVals;  // added a number space for the players
);
///////////////////////////
// the OSC soundsetter
// a) Test it, simple: 
q.setSoundsOSC = { |q, values, player|
	values.postln; player.postln; 
};

r.send(\all, q.myOSCPath, (Array.rand(12,0,1.0)).asString); // string or compilestring?
// b) complex:
(
q.setSoundsOSC = { |q, values, player|
	var trig1,trig2,trig3, trig4, trig5, trig6;
	var analogVals, digitalVals, numberSpace, maxVal;
	maxVal=6.0;
	values = values.interpret; 
	analogVals = values.keep(6);
	digitalVals = values.drop(6);
	numberSpace = (player++"OldVals").asSymbol;
	if(player==\jonas) {maxVal=1.0};
	// DEFINE OUR TRIGGERS HERE
		trig1 = (analogVals[0] > q.trig0thresh);
		trig2 = ((analogVals[1] > q.trig1thresh) && (q.at(numberSpace)[1] < q.trig1thresh));
		trig3 = (analogVals[2] > q.trig2thresh && (q.at(numberSpace)[2] < q.trig2thresh));
		trig4 = ((analogVals[3] > q.trig3thresh) && (q.at(numberSpace)[3] < q.trig3thresh));
		trig5 = ((analogVals[4] > q.trig4thresh) && (q.at(numberSpace)[4] < q.trig4thresh));
		trig6 = ((analogVals[5] > q.trig5thresh) && (q.at(numberSpace)[5] < q.trig5thresh));
		// TRIGGERING SOUNDS

		if(trig1)  { "OSC Trigger 1! val: %\n".postf(analogVals[0].round(0.01)); q.sound01.play; q.sound01.set(\trigger, 1);} {q.sound01.set(\trigger, 0)};
		// The doorbells
		if(trig2) { if(q.sound02.isPlaying) {q.sound02.stop} {q.sound02.reset.play; ('instrument': 'press2', 'amp': 0.15, 'p0': 1, 'p1': 0.1, 'sustain': 0.4, 'freq': 4000.rand + 2000, 'ratio': 0.7).play;}; 
		 "OSC Trigger 2! val: %\n".postf(analogVals[1].round(0.01));};
		// the drone sound
		if(trig3) {if(q.sound03.isPlaying) {"stopped".postln; q.sound03.end} {
			q.sound03.play; q.sound03.set(\trig, 1);  "OSC Trigger 3! val: %\n".postf(analogVals[2].round(0.01));}
		};
		// the bubble rhythm
		if(trig4) {  "OSC Trigger 4! val: %\n".postf(analogVals[3].round(0.01));if(q.sound04.isPlaying) {q.sound04.stop} {"Play Pdef BUBBLE DANCE".postln; q.sound04.play
			}
		};
		// the woodpecker sound
		if(trig5) {   "OSC Trigger 5! val: %\n".postf(analogVals[4].round(0.01));
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
			"OSC Trigger 6! val: %\n".postf(analogVals[5].round(0.01));
		};

		// MODIFYING SOUNDS
		q.sound01.set(
			\freq, digitalVals[0].linlin(0.001,maxVal,80, 6000),
			\saw, digitalVals[1].linlin(0.001,maxVal,0.01,5),
			\noise, digitalVals[2].linlin(0,maxVal,0.1,2),
			\reso, digitalVals[3].linexp(0,maxVal,0.001,1)
		);
		q.sound02.set(
			\freqscale, digitalVals[0].linlin(0,maxVal,1,0.1),
			// \ratio, digitalVals[1].linlin(0,maxVal, 2, 0.01),
			\sustain, digitalVals[3].linlin(0,maxVal, 1, 0.1),
			\noise, digitalVals[2].linlin(0.0,maxVal,0.1,2),
			\wait, digitalVals[3].linlin(0,maxVal, 1, 0.1)
		);
		q.sound03.set(
			\ringscale, digitalVals[1].linlin(0.001,maxVal, 0.1, 100),
			\bassvol, digitalVals[2].linlin(0,maxVal, 0.001, 0.5),
			\osc, digitalVals[0].linlin(0,maxVal, 0.3, 12),
			\ampl, digitalVals[3].linlin(0,maxVal,0.1,1)
		);
		Pbindef(\bubbleDance,
			'sustain', digitalVals[0].linlin(0,maxVal,0.1,2),
			// Pn(Pfunc{ var valArray=q.controlBus.get; valArray[0]}, inf) + 0.1,
			//Prand([0.001, 0.002, 0.003, 0.004, 0.005, 0.006, 0.01, 0.02, 0.03],60),
			'freq', Prand([1000, 2000, 3000, 3500], 120) * digitalVals[1].linlin(0,maxVal,
				2, 0.1),
			'rise', Prand([4, 8, 10], 120) * digitalVals[2].linlin(0,maxVal,0.5,5),
			//	'where', Pseq([0, 1, 2, 3], inf),
			'dur', Pseq([0.1, 0.4, 0.2, 0.1], inf) * digitalVals[3].linlin(0,maxVal,3,0.2)
		).trace;

		q.sound05.set(
			\start, digitalVals[0].linlin(0,maxVal,0.01,0.1),
			\grow, digitalVals[1].linlin(0,maxVal,0.9,2.2),
			\num, digitalVals[2].linlin(0,maxVal,60,220),
			\freq, digitalVals[3].linlin(0,maxVal,600,4000)
		);
		q.sound06.set(
			\freq, digitalVals[0].linlin(0,maxVal,800,10000),
			\sustain, digitalVals[1].linlin(0,maxVal,0.1,2),
			// \amp, 0.1,
			\driftFreq, digitalVals[2].linlin(0,maxVal,10,100),
			\dur, digitalVals[3].linlin(0,maxVal,0.05,1)
		);

		q.put(numberSpace, (analogVals ++ digitalVals));
	
};	

);


// send some values over: 


(
Tdef(\fakeOSC, {
	inf.do{
		// sending to all citizens
		r.send(\all, q.myOSCPath, (Array.rand(12,0,0.41)).asCompileString);
		0.2.wait;
	}
}).play;
);







