

// TEXTURAL FAMILY
// WindyDoorbell & WindyChimes have noise and melodic properties
(
Tdef(\WindyDoorbell_Jas, {

	15.do{
( 'instrument': 'press2', 'amp': 0.3, 'p0': 1, 'p1': 0, 'sustain': 10, 'freq': 4000.rand + 2000, 'ratio': 2, 'where': 0	).play;
(0.6 + 0.4.rand).wait;
	}



}).play;
)



// i like 'windy chimes' but im not sure if its so safe with  headphones because it can grow to dangerously loud levels for the ears...
(


Tdef(\WindyChimesJAS_B8,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3951 + rrand(1975.5,987.75),
			'sustain': 2,
			'amp': 2,
			'where': 0
		).play;

		1.wait;
	};
}).play;
)

(
Pdef(\Resonance_Jas,
	Pbind(
		'instrument', 'klankinger',
		'i_freq', Prand([200, 400, 800, 1600], 30),
		'out', 0,
		'trig', 1,
		'att', 0.2,
		'dcy', Prand([1, 2, 3], 20),
		'ffreq', Prand([2000, 4000, 8000], 40),
		'ampl', Prand([0.5, 0.6, 0.7, 1, 1.5, 1.7], 40),
		'harm', [ 1, 2, 3, 4 ],
		'amp', [ 0.05, 0.05, 0.05, 0.05 ],
		'ring', [ 1, 1, 1, 1 ],
		'where', 0
	)
).play;
);


// rythmic & melodic

(
Pdef(\bubbleDance_jas,
	Pbind(
	'instrument', 'bubble',
	'out', 0,
	'sustain', Prand([0.001, 0.002, 0.003, 0.004, 0.005, 0.006, 0.01, 0.02, 0.03],60),
	'freq', Prand([1000, 2000, 3000, 3500], 60),
	'rise', Prand([4, 8, 10], 60),
	'amp', 2,
	'pan', 0,
	'where', Pseq([0, 1, 2, 3], inf),
	'dur', Pseq([0.1, 0.4, 0.2, 0.1], inf)
)
).play;
);

(
Tdef(\MorseCodeJasC6, {

	20.do{
( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 2.93, 'num': 30, 'freq': rrand(1047, 1100, 2000), 'rise': 6, 'dcy': 0.01, 'amp': 1, 'where': 0	).play;
0.1.wait;
	}



}).play;
)


}).play;
)

// a one shot sound, in the percussion family..

(
SynthDef(\bubbleAscension, { |out, sustain = 8, freq = 784, rise = 5, amp = 1, pan = -2|
	var source = SinOsc.ar(XLine.ar(freq, freq * rise, sustain));

	var env = XLine.ar(1, 0.001, sustain, doneAction: 2);

	Out.ar(out, Pan2.ar(source * env, pan, amp))
	}).play;
)





