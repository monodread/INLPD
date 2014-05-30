// Some Favorite Sounds from Republic
// 30.5.14

(
SynthDef('feedDriftComb', { arg freq = 3500, sustain= 2.0, amp = 3, out=0;
	var follower, env;
	env = Env.sine;
	follower = Amplitude.kr(AudioIn.ar(1));
	Out.ar(out,
		CombN.ar(
			AudioIn.ar([1,2]) ,
			0.1,
			LFNoise1.kr(20).range(freq.reciprocal * 0.5, freq.reciprocal * 1.5)
			 // 0.0001	// dlytime, dcytime
			 )
		*  EnvGen.kr(env, levelScale: amp, timeScale: sustain, doneAction: 2);
		);
}).share;
);

(
SynthDef('feedDriftComb2', { arg freq = 3500, sustain= 2.0, amp = 1, driftFreq=2, decay=1, out=0;
	var follower, env;
	env = Env.sine;
	follower = Amplitude.kr(AudioIn.ar(1));
	Out.ar(out,
		DelayN.ar(
			LeakDC.ar(
			CombL.ar(
				LPF.ar(AudioIn.ar(1), freq * 0.5) ,
				0.1,
				LFNoise1.kr(driftFreq, follower * freq.reciprocal, freq.reciprocal),
				freq.reciprocal * decay
			), 0.2)
			)
		*  EnvGen.kr(env, levelScale: amp, timeScale: sustain, doneAction: 2);
		);
}).share;
);

(
SynthDef('feedDriftComb3', { arg freq = 3500, sustain= 2.0, amp = 3, out=0;
	var follower, env;
	env = Env.sine;
	follower = Amplitude.kr(AudioIn.ar(1));
	Out.ar(out,
		CombN.ar(
			AudioIn.ar([1,2]) ,
			0.1,
			LFNoise1.kr(20).range(freq.reciprocal * 0.5, freq.reciprocal * 1.5) * follower,
			follower	// dlytime, dcytime
			 )
		*  EnvGen.kr(env, levelScale: amp, timeScale: sustain, doneAction: 2);
		);
}).share;
);

(
SynthDef('feedScaleFreqs', { arg freq = 1000, freq2 = 5000, sustain= 2.0, out=0;
	var follower, pitch, env;
	env = Env.sine;
	follower = Amplitude.kr(AudioIn.ar(1));

	Out.ar(out,
			AudioIn.ar([1,2]) * Pulse.ar(freq2 - freq * follower + freq)
			* EnvGen.ar(env, levelScale: 4, timeScale: sustain, doneAction: 2);
	)
}).share;
);

(
SynthDef('filling', {|out, amp = 0.1, p0 = 0, p1 = 1, sustain = 10,
	freq = 300, div = 0.7, decay = 0.3|
	var son, n = 6, freqs;
	var exc = WhiteNoise.ar(0.1.dup);
	var pressure = EnvGen.kr(Env.new([p0, p1, p1], [sustain * div, sustain * (1 - div)], [\lin]));
	amp = EnvGen.kr(
		Env.new([0.001, amp, amp, 0.001], [0.01, sustain, decay], [\exp]), doneAction: 2);
	freqs = {|i| (pressure * 0.2 + 1) ** i * freq } ! n;
	son = DynKlank.ar(`[freqs, 1/n, [2 - pressure]], exc);
	// son = son * ToggleFF.kr(Dust.kr(20), 0.3, 0.5);
	Out.ar(out, son * amp);

}).share;
);

(
SynthDef('glisson', { arg out = 0, freq=800, freq2=1200, sustain=0.01, amp=0.5, pan = 0.0;
		var window, freqEnv;
		window = Env.sine(sustain, amp);
		freqEnv = Env([ freq, freq2 ], [ sustain ]);
		Out.ar(out,
			Pan2.ar(
				SinOsc.ar(EnvGen.ar(freqEnv)),
				pan
			)
			* EnvGen.ar(window, doneAction:2)
		)
	}).share;
);

(
SynthDef('grain', { arg out = 0, freq=800, sustain=0.01, amp=0.5, pan = 0;
		var window;
		window = Env.sine(sustain, amp);
		Out.ar(out,
			Pan2.ar(
				SinOsc.ar(freq),
				pan
			) * EnvGen.ar(window, doneAction:2)
		)
	}).share;
);

(
SynthDef('grainLine', { arg out = 0, freq=800, sustain=0.01, amp=0.5, pan = 0.0;
		var window;
		window = Env.new([ amp, 0 ], [ sustain ]);
		Out.ar(out,
			Pan2.ar(
				SinOsc.ar(freq),
				pan
			) * EnvGen.ar(window, doneAction:2)
		)
	}).share;
);

(
SynthDef('grainSine', { arg out = 0, freq=800, sustain=0.01, amp=0.5, pan = 0;
		var window;
		window = Env.sine(sustain, amp);
		Out.ar(out,
			Pan2.ar(
				SinOsc.ar(freq),
				pan
			) * EnvGen.ar(window, doneAction:2)
		)
	}).share;
);

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
	}).share;
);

(
SynthDef('grainXLRev', { arg out = 0, freq=800, sustain=0.01, amp=0.5, pan = 0.0;
		var window;
		window = Env.new([ amp, 0.01, amp*0.5, 0.0001 ], [ sustain/4, sustain*3/8, sustain*3/8 ], 'exponential');
		Out.ar(out,
			Pan2.ar(
				SinOsc.ar(freq),
				pan
			) * EnvGen.ar(window, doneAction:2)
		)
	}).share;
);

(
SynthDef('grain_interpret', { arg out = 0, freq=800, sustain=0.01, amp=0.5;
		var window, pitch;
		window = Env.sine(sustain, amp);
		pitch = (Rand(4) + 1 * freq).postln;

		Out.ar(out,
			SinOsc.ar(pitch)
			* EnvGen.ar(window, doneAction:2)
		)
	}).share;
);