

// REPUBLIC - all synthdefs

(
SynthDef('bubble', { |out, sustain = 0.01, freq = 2000, rise = 4, amp = 1, pan|
	OffsetOut.ar(out,
		Pan2.ar(
			SinOsc.ar(XLine.ar(freq, freq * rise, sustain))
			* XLine.ar(1, 0.001, sustain, doneAction: 2),
			pan, amp
		)
	)
}).add;
);

(
SynthDef('deepsea', { arg out, pan=0, amp=0.1, variation=0.9;
	var dt, freq, mul, trig, son, count, rand;

	rand = Rand(7, 46);
	dt = 25.0 + Rand(-1.7, 1.7);
	dt = dt + LFNoise2.kr(2, variation) * 0.001;
	freq = 901 + Rand(0, 65);
	trig = Impulse.ar(dt.reciprocal, 0, 100);
	count = PulseCount.ar(trig);
	mul = count < rand; // this returns 1 if true, acts as trigger
	son = BPF.ar(mul.poll * trig, freq, 0.1);
	son = BPF.ar(son, freq * (count % LFNoise1.kr(1).range(2, 20) + 1), 0.2);
	DetectSilence.ar(son, doneAction:2);
	Out.ar(out, Pan2.ar(son, pan, amp * 10));
}).add;
);

(
SynthDef('delta_demand2', { arg out=0, start=0.05, grow=0.93, num=20, freq=1000, dcy=0.01, amp=0.5;
	var channel;
	OffsetOut.ar(out,
		Ringz.ar(
			TDuty.ar(Dgeom(start, grow, num), 0, 0.5, 2),
			freq,
			dcy, amp
		)
	)
}).add;
);

(
SynthDef('dirac', { arg out=0, amp=1.0, pan=0, sustain = 1;
	var trig;
	trig = Impulse.ar(1);
	FreeSelf.kr(trig);
	OffsetOut.ar(out, Pan2.ar(trig * amp, pan))
}).add;
);

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
}).add;
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
}).add;
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
}).add;
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
}).add;
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

}).add;
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
	}).add;
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
	}).add;
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
	}).add;
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
	}).add;
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
	}).add;
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
	}).add;
);

(
SynthDef('grain_interpret', { arg out = 0, freq=800, sustain=0.01, amp=0.5, preamp=1;
		var window, pitch;
		window = Env.sine(sustain, amp);
		pitch = (Rand(4) + 1 * freq).postln;

		Out.ar(out,
			SinOsc.ar(pitch, 0, preamp**3).tanh
			* EnvGen.ar(window, doneAction:2)
		)
	}).add;
);

(
SynthDef('hatXLine', { arg out = 0, freq=8000, sustain=0.01, amp=0.5, pan = 0.0;
		var window;
		window = Env.new([ amp, 0.001 ], [ sustain ], 'exponential');
		Out.ar(out,
			Pan2.ar(
				BPF.ar(ClipNoise.ar, freq, 0.1),
				pan,
				3
			) * EnvGen.ar(window, doneAction:2)
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

(
SynthDef('klankinger', { arg out=0, i_freq=200, trig=1, att=0.2, dcy=2, ffreq=2000, ampl=0.4;
	var klank, n, harm, ring, env, amp;
	n = 9;
	harm = Control.names([\harm]).ir(Array.series(4,1,1).postln);
	amp =  Control.names([\amp]).ir(Array.fill(4,0.05));
	ring = Control.names([\ring]).ir(Array.fill(4,1));
	klank = Klank.ar(`[harm,amp,ring], {ClipNoise.ar(0.003)}.dup, i_freq);
	klank = LPF.ar(klank, ffreq + SinOsc.kr([3,4],0, 300, 1000));
	env = EnvGen.kr( Env.new([0,1,0],[att, dcy]), trig, doneAction:2);
	Out.ar(out, klank * env * ampl);
}).add;
);

(
SynthDef('MUTE', { |dur = 3|
	ReplaceOut.ar(0, Silent.ar(2)) * Line.kr(0.001, 0.001, dur, doneAction: 2)
}).add;
);

(
SynthDef('outlet1', { |out, amp=0.1, sustain=5, freq=5000|
	var energy = EnvGen.kr(Env.perc(Rand(0.01, 0.02), sustain), doneAction:2);
	var son;
	son = Resonz.ar(WhiteNoise.ar(0.5.dup), energy.linlin(1, 0, freq, freq * 0.2), 0.4);
	Out.ar(out, son * energy)

}).add;
);

(
SynthDef('press', { |out, amp = 0.1, p0 = 1, p1 = 0, sustain = 10, freq = 4000, ratio = 2|
	var pressure, son, map, param;
	pressure = EnvGen.ar(Env.new([p0, p1.max(0.001)], [sustain], [-4]), doneAction: 2);
	param = pressure.linlin(1, 0, 1.32, 1.99);

	son = Crackle.ar(param + [0, Rand(0, 0.001)]);
	freq = pressure.linlin(1, 0, freq * ratio, freq) * LFNoise1.kr(80,  1 - pressure * 0.1, 1);
	son = Ringz.ar(son, freq, 0.01);

	Out.ar(out, son * pressure * (amp * 10))
}).add;
);

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
SynthDef('ur2', { |out, amp=0.2, pan, sustain=0.3,
	fundA=110, fundZ=160, f1a=600, f1z=900, f2a=2500, f2z=1500, rq=0.1|

	var formz = XLine.kr([f1a, f2a], [f1z, f2z], sustain);
	OffsetOut.ar(out,
		Pan2.ar(
			Formant.ar(
				XLine.kr(fundA, fundZ, sustain),
				formz,
				formz * rq,
				AmpComp.kr(formz, exp: 0.5)
			),
			pan
		) * EnvGen.ar(Env.linen(*(sustain * [0.05, 0.8, 0.15] ++ amp)), doneAction: 2)
	);
}).add;
);
