

// Some Early Sounds For INLDP

// filling

(
Tdef(\fillingJasG2, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 98, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)


(
Tdef(\fillingJasG3, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 196, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\fillingJasD3, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 147, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\fillingJasG4, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 392, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\fillingJasD4, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 294, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\fillingJasG5, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 784, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\fillingJasD5, {

	25.do{
( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 5, 'freq': 587, 'div': 1.5, 'decay': 2.0, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
)


// grain interpret

(
Tdef(\grain_interpretJasG4, {

	50.do{
( 'instrument': 'grain_interpret', 'freq': 392.rand + 196, 'sustain': 0.01, 'amp': 1.5, 'where': r.nameList.choose	).play;
([0.1,0.4].wchoose([0.8,0.2])).wait;
	}

}).play;
)

(
Tdef(\grain_interpretJasB5, {

	50.do{
( 'instrument': 'grain_interpret', 'freq': 494.rand + 247, 'sustain': 0.01, 'amp': 1.5, 'where': r.nameList.choose	).play;
([0.1,0.4].wchoose([0.8,0.2])).wait;
	}

}).play;
)

(
Tdef(\grain_interpretJasD5, {

	50.do{
( 'instrument': 'grain_interpret', 'freq': 587.rand + 293.5, 'sustain': 0.01, 'amp': 1.5, 'where': r.nameList.choose	).play;
([0.1,0.4].wchoose([0.8,0.2])).wait;
	}

}).play;
)

// jbyjh

(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 5.01,
			'amp': 0.1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		4.wait;
	};
}).play;
)

(
Tdef(\jbyjhJasC8,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 4186 + rrand(4000,2000,1000,500,250,125),
			'sustain': 5.01,
			'amp': 0.1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		4.wait;
	};
}).play;
)

(
Tdef(\jbyjhJasC7,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 2093 + rrand(4000,2000,1000,500,250,125),
			'sustain': 5.01,
			'amp': 0.1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		4.wait;
	};
}).play;
)

// iybgc

(
Tdef(\iybgc_JasA7,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 1760 + rrand(880,437,218),
			'sustain': 5,
			'amp': 0.5,
			'where': 0
		).play;

		1.wait;
	};
}).play;
)

(
Tdef(\iybgc_JasA8,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3520 + rrand(1750,875,437,218),
			'sustain': 5,
			'amp': 0.5,
			'where': 0
		).play;

		1.wait;
	};
}).play;
)


// press2

(
Tdef(\press2Jas, {

	100.do{
( 'instrument': 'press2', 'amp': 1, 'p0': 1, 'p1': 0, 'sustain': 10, 'freq': 4000.rand + 2000, 'ratio': 2, 'where': rrand(2, 20)	).play;
(0.6 + 0.4.rand).wait;
	}



}).play;
)

// poltergeist

(
	Tdef(\hatXLRevJo, {
	50.do{

	10.do{
( 'instrument': 'hatXLRev', 'freq': 8000.rand + 400, 'sustain': 2.01, 'amp': 1.5, 'pan': 0, 'where': rrand(2, 20)	).play;

	0.1.wait;
	};

	[1,3,5,10].choose.wait;


	}
}).play;
	)

(
Tdef(\hatXLRevJas, {

	100.do{
( 'instrument': 'hatXLRev', 'freq': 8000.rand + 400, 'sustain': 2.01, 'amp': 1.5, 'pan': 0, 'where': rrand(2, 20)	).play;
0.1.wait;
	}

}).play;
)

// stwmp

(
Pdef(\stwmp_jas,
	Pbind(
	'instrument', 'bubble',
	'out', 0,
	'sustain', 0.01,
	'freq', Prand([1000, 2000, 3000], 10),
	'rise', 4,
	'amp', 1,
	'pan', 0,
	'where', Pseq([0, 1, 2, 3], inf),
	'dur', Pseq([0.1, 0.4, 0.2, 0.1], inf)
)
).play;
);

// bubbles rising

(
SynthDef(\bubble3, { |out, sustain = 4, freq = 2000, rise = 3, amp = 1, pan = -2|
	var source = SinOsc.ar(XLine.ar(freq, freq * rise, sustain));

	var env = XLine.ar(1, 0.001, sustain, doneAction: 2);

	Out.ar(out, Pan2.ar(source * env, pan, amp))
	}).play;
)

(
SynthDef(\bubble4, { |out, sustain = 4, freq = 2000, rise = 4, amp = 1, pan = -2|
	var source = SinOsc.ar(XLine.ar(freq, freq * rise, sustain));

	var env = XLine.ar(1, 0.001, sustain, doneAction: 2);

	Out.ar(out, Pan2.ar(source * env, pan, amp))
	}).play;
)

(
SynthDef(\bubble5, { |out, sustain = 5, freq = 1500, rise = 5, amp = 1, pan = -2|
	var source = SinOsc.ar(XLine.ar(freq, freq * rise, sustain));

	var env = XLine.ar(1, 0.001, sustain, doneAction: 2);

	Out.ar(out, Pan2.ar(source * env, pan, amp))
	}).play;
)

(
SynthDef(\bubble5G5, { |out, sustain = 5, freq = 784, rise = 5, amp = 1, pan = -2|
	var source = SinOsc.ar(XLine.ar(freq, freq * rise, sustain));

	var env = XLine.ar(1, 0.001, sustain, doneAction: 2);

	Out.ar(out, Pan2.ar(source * env, pan, amp))
	}).play;
)

// feedScaleFreqs

(
Tdef(\feedScaleFreqsNM2, {
	200.do{(
		'instrument': 'feedScaleFreqs',
		'freq': 250.rand + 200,
		'freq2': 700.rand + 350,
		'sustain': 1,
		'out': 0,
		'dur': 5,
		'amp': 0.5,
		'where': r.nameList.choose	).play;
0.5.wait;
	}



}).play;
)


// grainSine

(
Tdef(\grainSineJasD5, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 598.rand + 299 + rrand(110,65),
		'sustain': 0.02,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}

// grainSineJas A, B, Bsharp, C

}).play;
)

(
Tdef(\grainSineJasA, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 220.rand + 120 + rrand(110,65),
		'sustain': 0.03,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
)



(
Tdef(\grainSineJasB, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 247.rand + 123.5 + rrand(110,65),
		'sustain': 0.03,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
)



(
Tdef(\grainSineJasBSharp, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 269.5.rand + 134.75 + rrand(110,65),
		'sustain': 0.04,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
)

(
Tdef(\grainSineJasC, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 262.rand + 131 + rrand(110,65),
		'sustain': 0.03,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
)

// ascending sound


(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 * (i%20)),
		'sustain': 0.04,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		1.1.wait;
	}



}).play;
)

//grainSineJas2

(
Tdef(\grainSineJas2C, {

	50.do{

		(
		'instrument': 'grainSine',
		'freq': 131.rand + 100,
		'sustain': 0.01,
		'amp': 1.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
)


 (
Tdef(\grainSineJas2D, {

	50.do{

		(
		'instrument': 'grainSine',
		'freq': 147.rand + 100,
		'sustain': 0.01,
		'amp': 1.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
 )

  (
Tdef(\grainSineJas2E, {

	50.do{

		(
		'instrument': 'grainSine',
		'freq': 165.rand + 100,
		'sustain': 0.01,
		'amp': 1.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
 )

// bubbles

(
Tdef(\bubbleJasC, {

	20.do{
( 'instrument': 'bubble', 'sustain': 0.02, 'freq': 131 + rrand(250,125,262), 'rise': 8, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\bubbleJasD, {

	20.do{
( 'instrument': 'bubble', 'sustain': 0.02, 'freq': 147 + rrand(250,125,294), 'rise': 8, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\bubbleJasE, {

	20.do{
( 'instrument': 'bubble', 'sustain': 0.02, 'freq': 165 + rrand(250,125,330), 'rise': 8, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
0.1.wait;
	}

}).play;
)

// bubble with waits..

(
Tdef(\bubbleWaitC5, {

	20.do{
( 'instrument': 'bubble', 'sustain': 0.01, 'freq': 523 + rrand(1046,261.5,220,130.75), 'rise': 7, 'amp': 3, 'pan': 0, 'where': r.nameList.choose
).play;
0.6.wait;
	}



}).play;
)

// delta demand

(
Tdef(\delta_demand2JasC6, {

	20.do{
( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 2.93, 'num': 30, 'freq': 1047, 'rise': 6, 'dcy': 0.01, 'amp': 1, 'where': 0	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\delta_demand2JasG6, {

	30.do{
( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 2.93, 'num': 30, 'freq': 1568, 'rise': 6, 'dcy': 0.01, 'amp': 1.5, 'where': 0	).play;
0.1.wait;
	}



}).play;
)


(
Tdef(\delta_demand2JasC7, {

	30.do{
( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 2.93, 'num': 30, 'freq': 2093, 'rise': 6, 'dcy': 0.01, 'amp': 1.5, 'where': 0	).play;
0.1.wait;
	}



}).play;
)

(
Tdef(\delta_demand2JasG7, {

	30.do{
( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 2.93, 'num': 30, 'freq': 3136, 'rise': 6, 'dcy': 0.01, 'amp': 1, 'where': 0	).play;
0.1.wait;
	}



}).play;
)

// feedDriftComb

(
Tdef(\bvmnyJAS_A8,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3520 + rrand(1760,880),
			'sustain': 2,
			'amp': 3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
)

(
Tdef(\bvmnyJAS_B8,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3951 + rrand(1975.5,987.75),
			'sustain': 2,
			'amp': 3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
)

(
Tdef(\bvmnyJAS_C8,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 4186 + rrand(2093,1046.5),
			'sustain': 2,
			'amp': 3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
)



// glisson

(
Tdef(\glissonJasD6, {

	20.do{
( 'instrument': 'glisson', 'freq': 1175 + rrand(880,587.5,440,293.75,220,146.875), 'sustain': 0.20, 'amp': 3, 'pan': 0, 'where': r.nameList.choose	).play;
0.4.wait;
	};




}).play;
	)

(
Tdef(\glissonJasA6, {

	20.do{
( 'instrument': 'glisson', 'freq': 880 + rrand(2349,587.5,440,293.75,220,146.875,110), 'sustain': 0.20, 'amp': 3, 'pan': 0, 'where': 0	).play;
0.4.wait;
	};




}).play;
	)

// grainXLRev

(
Tdef(\grainXLRevJasG5, {

	20.do{
( 'instrument': 'grainXLRev', 'freq': 784 + rrand(698,392,349,196,98), 'sustain': 0.41, 'amp': 1.4, 'pan': 0, 'where': r.nameList.choose	).play;
1.03.wait;
	}



}).play;
)

