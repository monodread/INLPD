
///////////////////////////////////////////////////////////////////////////
// THE SOUNDS
///////////////////////////////////////////////////////////////////////////
/*
NdefMixer.new(s);
PdefAllGui.new;
TdefAllGui.new;
*/
// Sound 1
(
Ndef(\testsine).play;

(
Ndef(\testsine, {|freq=110, amp=0.1, noise=1, reso=0.001, release=0.5, sustain=1, trigger=1, pan=0, saw=0.3|
	var son, env;
	env = Env([0.0, 1.0, 0.5, 0.0], [0.01, 0.8, release], -4, 2, 0);
	env = EnvGen.kr(env, trigger, timeScale:sustain); // t_trig for simple triggers
	son = Mix((SinOsc.ar(freq) + Saw.ar(freq, saw)) + WhiteNoise.ar(noise)).tanh * env;
	son = Ringz.ar(son, freq, reso);
	Pan2.ar(LeakDC.ar(son) * amp, pan)
});

);


/*(
Ndef(\testsine).addSpec(\sustain, [0.01, 5.0, \exp]);
Ndef(\testsine).addSpec(\saw, [0.001, 2.0, \exp]);
Ndef(\testsine).addSpec(\noise, [0.001, 2.0, \exp]);
Ndef(\testsine).addSpec(\trigger, [0, 1, \lin, 1]);
NdefGui(Ndef(\testsine));
);
*/

///////////////////////////////////////////////////////////////////////////
// WINDY DOOR BELL
///////////////////////////////////////////////////////////////////////////

// Tdef(\WindyDoorbell).gui(10);
Tdef(\WindyDoorbell).set(\repeats, 150, \amp, 0.1, \freqscale, 1, \ratio, 1, \sustain, 3, \wait, 0.6, \p0, 1, \p1, 0.5, \noise, 1, \sineNote, 0);
Spec.add(\repeats, [1,20,\lin]);
Spec.add(\ratio, [0.01,3,\exp]);
Spec.add(\sustain, [0.01,10,\exp]);
Spec.add(\wait, [0.1,1,\exp]);
// to test value ranges, fire one off
('instrument': 'press2', 'amp': 0.1, 'p0': 0.1, 'p1': 1, 'sustain': 1, 'freq': 4000.rand + 2000, 'ratio': 0.01).play;
// p1 from 0 to 1, end val of env, p0 from 0 to 1, start val of the env?
(
Tdef(\WindyDoorbell, {|env|
	env[\repeats].do{ |i|
		var rhythm = [1.02, 1];
		i = i%2;
		( 'instrument': 'press2', 'amp': env[\amp], 'p0': env[\p0], 'p1': env[\p1], 'sustain': env[\sustain], 'freq': (4000.rand + 2000) * env[\freqscale], 'ratio': env[\ratio], 'noise': env[\noise], 'sineNote': env[\sineNote]).play;
		(env[\wait] * rhythm@i).wait;
	}

});
);
// i_freq=200, trig=1, att=0.2, dcy=2, ffreq=2000, ampl=0.4;
///////////////////////////////////////////////////////////////////////////
// Resonant Drone
// First version, as Pdef

/* (
Pdef(\Resonance_Jas,
	Pbind(
		'instrument', 'klankinger',
		'i_freq', Prand([200, 400, 800, 1600], 30),
		'trig', 1,
		'att', 0.2,
		'dcy', Prand([1, 2, 3], 20),
		'ffreq', Prand([2000, 4000, 8000], 40),
		'ampl', 5 * Prand([0.5, 0.6, 0.7, 1, 1.5, 1.7], 40)
	/*	'harm', [ 1, 2, 3, 4 ],
		'amp', [ 0.05, 0.05, 0.05, 0.05 ],
		'ring', [ 1, 1, 1, 1 ]*/
	).trace
);
);
*/
///////////////////////////////////////////////////////////////////////////
// 2nd: klankinger as Ndef
(
// Ndef('klankinger').set(\freq, 200);
Ndef('klankinger', { arg i_freq=200, trig=1, att=0.7, dcy=2, ffreq=2000, osc=3, sustain=1, bassvol=1,ringscale=1,ampl=0.4;
	var klank, bass, harm, ring, env, freqenv, amp;
	i_freq = rrand(100,200);
	env = EnvGen.kr( Env.new([0, 1, 1, 0],[att, att+dcy, dcy],'lin', 2, 1), trig, timeScale:sustain);
//	freqenv = EnvGen.kr( Env.new([1, p1, 1],[0.3, 0.3, 0.3], 'lin', 1, 0), trig, timeScale:sustain).lag(1);
	harm = Control.names([\harm]).ir(Array.series(6,1,1));
	amp =  Control.names([\amp]).ir(Array.fill(6, {|i| 0.2 /((i+1)*0.1) } ));
	ring = Control.names([\ring]).ir(Array.fill(6,1));
	klank = DynKlank.ar(`[harm,amp,ring], {ClipNoise.ar(0.003)}.dup, i_freq, 0, ringscale);
	bass = SinOsc.ar(i_freq*0.5,0,bassvol.lag(0.2)).softclip;
	osc = osc.lag(1);
	klank = LPF.ar(klank + bass, ffreq + SinOsc.kr(osc, 0, osc*100, osc*200));
	klank * env * ampl.lag(0.5)
})
);

///////////////////////////////////////////////////////////////////////////
// dancing bubbles

(
Pdef(\bubbleDance,
	Pbind(
	'instrument', 'bubble',
	'sustain', Prand([0.001, 0.002, 0.003, 0.004, 0.005, 0.006, 0.01, 0.02, 0.03],60),
	'freq', Prand([1000, 2000, 3000, 3500], 60),
	'rise', Prand([4, 8, 10], 60),
	'amp', 0.5,
	'pan', 0,
//	'where', Pseq([0, 1, 2, 3], inf),
	'dur', Pseq([0.1, 0.4, 0.2, 0.1], inf)
)
);
);
///////////////////////////////////////////////////////////////////////////
// MorseCode

//Tdef(\MorseCode).gui;
Tdef(\MorseCode).set(\start, 0.05, \grow, 0.93, \num, 30, \freq, 1000, \rise, 6, \dcy, 0.01, \amp, 0.2);

(
Tdef(\MorseCode, { |env|

	20.do{ |i|
		var durs = [1, 0.3]*3;
		( 'instrument': 'delta_demand2', 'start': env[\start], 'grow': env[\grow], 'num': env[\num], 'freq': env[\freq], 'dcy': env[\dcy], 'amp': env[\amp], 'where': 0	).play;
		durs.choose.wait;

	}
});
);


///////////////////////////////////////////////////////////////////////////
// feed Drift Comb!

Tdef(\feedDrift).set(\freq, 2000, \sustain, 0.4, \amp, 0.1, \driftFreq, 20, 1, \dur, 1);
// Tdef(\feedDrift).gui;
// fire one off
(instrument: \feedDriftComb, freq: 1500, sustain: 0.5, amp: 0.1, driftFreq: 20).play;
// (instrument: \feedDriftComb2, freq: 1500, sustain: 3, amp: 10, driftFreq: 20, decay: 6).play;

(
Tdef(\feedDrift,{ |env|
	160.do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': env[\freq],
			'sustain': env[\sustain],
			\driftFreq: env[\driftFreq],
			\decay: env[\decay],
			'amp': env[\amp],
			'where': 0
		).play;

		env[\dur].wait;
	};
});
);

///////////////////////////////////////////////////////////////////////////
// Sounds needed: all synthDefs to add

// press2, THIS IS MODDED to the original
(
SynthDef('press2', { |out, amp = 0.1, p0 = 1, p1 = 0, sustain = 10, freq = 4000, ratio = 2, noise=1, sineNote=0|
	var pressure, son, map, n = 4;
	sineNote = (sineNote).round(1).midicps;
	pressure = EnvGen.ar(Env.new([p0, p1.max(0.0001)], [sustain], [\exp]), doneAction: 2);
	map = { |i|
		var a = rrand(0.0, 1.0).postln;
		InRange.ar(pressure, a, a + 0.1) * SinOsc.ar(rand2(3000, 12000) - sineNote, 0, 0.1)
	} ! n;
	son = Crackle.ar(pressure.linlin(1, 0, 1.32, 1.99) + [0, Rand(0, 0.001)]);
	freq = pressure.linlin(1, 0, freq * ratio, freq) * LFNoise1.kr(80,  1-pressure * 0.1, 1);
	son = Ringz.ar(son, freq, 0.01);
	son = (son * noise) + map.sum;
	Out.ar(out,  (son * pressure * (amp * 5)).softclip)
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

(
SynthDef('bubble', { |out, sustain = 0.01, freq = 2000, rise = 4, amp = 1, pan|
	OffsetOut.ar(out,
		Pan2.ar(
			SinOsc.ar(XLine.ar(freq, freq * rise, rise))
			* XLine.ar(1, 0.001, sustain, doneAction: 2),
			pan, amp
		)
	)
}).add;
);

/*
(instrument: \delta_demand2, start: 0.05, grow: 0.93, num: 20, freq: 1000, dcy: 0.01, amp: 0.5).play;

(instrument: \delta_demand2, start: 0.1, grow: 0.9, num: 80, freq: 2000, dcy: 0.1, amp: 0.5).play;
*/
(
SynthDef('delta_demand2', { arg out=0, start=0.05, grow=0.93, num=20, freq=1000, dcy=0.01, amp=0.5;
	var channel;
	OffsetOut.ar(out,
		Ringz.ar(
			TDuty.ar(Dgeom(start, grow, num), 0, 0.5, 2),
			freq!2,
			dcy, amp
		)
	)
}).add;
);

(
SynthDef('feedDriftComb', { arg freq = 3500, sustain= 2.0, driftFreq=20, amp = 3, out=0;
	var follower, env;
	env = Env.sine;
	follower = Amplitude.kr(AudioIn.ar(1));
	Out.ar(out,
		CombN.ar(AudioIn.ar([1,2]),
			0.1,
			LFNoise1.kr(driftFreq).range(freq.reciprocal * 0.5, freq.reciprocal * 1.5)
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

///////////////////////////////////////////////////////////////////////////
Ndef(\testsine).set(\trigger, 1);
Ndef(\testsine).set(\trigger, 0);

);