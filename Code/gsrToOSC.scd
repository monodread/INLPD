// OSC Function for reading gsr input values...



OSCdef(\gsr, {arg msg;
		var val;
		val = msg[1];
		msg.postln;
		b.set(val.linlin(0,400,0,4.0));
		// use more AnalogIns to change sound params!
		// Tdef(\poltergeist).set(\dir, msg[2].linlin(0,150,0,1), \freq, msg[3].linexp(0,150,130,2000), \sustain, msg[4].linlin(0,150,0.1,4));
		// 	Ndef(\crossroads).set(\rate, msg[2].linexp(0,150,0.1,30), \freq, msg[3].linexp(0,150,100,4000), \bass, msg[4].linlin(0,150,0,2.0));

		// no sound if no input!
		if((val > 0), {Ndef(\monitor).play;}, {Ndef(\monitor).stop});

	}, '/gsr');
