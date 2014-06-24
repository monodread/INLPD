// OSC Function for reading gsr input values...


s.waitForBoot({

	// n = NetAddr("194.95.203.235", 57120); // your computers IP here
	n = NetAddr("127.0.0.1", 57120); // or localhost

	(
		Tdef(\fakeGSR, {
			inf.do{
//				n.sendMsg("/gsr", rrand(200,400));
				n.sendMsg("/gsr", [1,2,3]);
				rrand(0.1,0.5).wait;
			}
		}).play
	)
//	Tdef(\fakeGSR).stop;
	(
		// checking: receive values?
		OSCdef(\gsr, {arg msg;
			msg.postln;
		}, '/gsr');
	)
	/////////////////////////////////
	/// Our SynthDefs

	(

		(
			SynthDef('grainXLine', { arg out = 0, freq=800, sustain=0.01, amp=0.5, pan = 0.0;
				var window;
				window = Env.new([ amp, 0.001 ], [ sustain ], 'exponential');
				Out.ar(out,
					Pan2.ar(
						(SinOsc.ar(freq) * EnvGen.ar(window, doneAction:2)).clip2(1),
						pan
					)
				)
			}).add;
		);

		(
			SynthDef('hatXLRev', { arg out = 0, freq=8000, sustain=0.01, amp=0.5, pan = 0.0;
				var window;
				window = Env.new([ 0.001, amp ], [ sustain ], 'exponential');
				Out.ar(out,
					Pan2.ar(
						BPF.ar(ClipNoise.ar, freq, 0.1),
						pan,
						3
					) * EnvGen.ar(window, doneAction:2)
				)
			}).add;
		);


	);










	/////////////////////////////////
	(
		// checking: receive values?
		OSCdef(\gsr, {arg msg;
			msg.postln;
			(instrument: \hatXLRev, freq: msg[1], sustain: msg[1].linexp(0,400,0.01,1)).play;
		}, '/gsr');
	)
});