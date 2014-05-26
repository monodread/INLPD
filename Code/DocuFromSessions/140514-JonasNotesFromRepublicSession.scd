// REPUBLIC - example Pdefs for all shared synthdefs

Tdef(\grainSineJasJonas, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 3440 + (220 / (i%10)),
		'sustain': 0.05,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;


(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.05,
			'p0': 2,
			'p1': 0,
			'sustain': 0.3,
			'freq': 8000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;

)

(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', Pwhite(250,1500),
		'sustain', Pexprand(0.4, 2),
		'amp', Pseq([1, 0.01, 1],inf) * 2,
		'where', Pseq([\jas, \federella, \jonas ],inf),
		\dur, 5
	)
).play;

)


Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 1,
		'amp', 3,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', Prand(r.nameList,inf)
	)
).play;


(
Pdef(\curwd,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', 2000,
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\kccok,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', 1000,
		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

(
Pdef(\msffk,
	Pbind(
		'instrument', 'dirac',
		'out', 0,
		'amp', 1,
		'pan', 0,
		'sustain', 1,
		'where', 0
	)
).play;
);

(
Pdef(\xqjhg,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 3,
		'out', 0,
		'where', 0
	)
).play;
);

(
Pdef(\exgof,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 1,
		'driftFreq', 2,
		'decay', 1,
		'out', 0,
		'where', 0
	)
).play;
);

(
Pdef(\bktyd,
	Pbind(
		'instrument', 'feedDriftComb3',
		'freq', 3500,
		'sustain', 2,
		'amp', 3,
		'out', 0,
		'where', 0
	)
).play;
);

(
Pdef(\bgtly,
	Pbind(
		'instrument', 'feedScaleFreqs',
		'freq', 1000,
		'freq2', 5000,
		'sustain', 2,
		'out', 0,
		'where', 0
	)
).play;
);

(
Pdef(\vqqol,
	Pbind(
		'instrument', 'filling',
		'out', 0,
		'amp', 0.1,
		'p0', 0,
		'p1', 1,
		'sustain', 10,
		'freq', 300,
		'div', 0.7,
		'decay', 0.3,
		'where', 0
	)
).play;
);

(
Pdef(\ehxrx,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 800,
		'freq2', 1200,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\shxff,
	Pbind(
		'instrument', 'grain',
		'out', 0,
		'freq', 800,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\stxuz,
	Pbind(
		'instrument', 'grainLine',
		'out', 0,
		'freq', 800,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\iisud,
	Pbind(
		'instrument', 'grainSine',
		'out', 0,
		'freq', 800,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\spdsy,
	Pbind(
		'instrument', 'grainXLine',
		'out', 0,
		'freq', 800,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\zfefv,
	Pbind(
		'instrument', 'grainXLRev',
		'out', 0,
		'freq', 800,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\gccft,
	Pbind(
		'instrument', 'grain_interpret',
		'out', 0,
		'freq', 800,
		'sustain', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

(
Pdef(\jyszr,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 8000,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\aitgz,
	Pbind(
		'instrument', 'hatXLRev',
		'out', 0,
		'freq', 8000,
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

(
Pdef(\wjaon,
	Pbind(
		'instrument', 'klankinger',
		'i_freq', 200,
		'out', 0,
		'trig', 1,
		'att', 0.2,
		'dcy', 2,
		'ffreq', 2000,
		'ampl', 0.4,
		'harm', [ 1, 2, 3, 4 ],
		'amp', [ 0.05, 0.05, 0.05, 0.05 ],
		'ring', [ 1, 1, 1, 1 ],
		'where', 0
	)
).play;
);

(
Pdef(\hcybj,
	Pbind(
		'instrument', 'MUTE',
		'dur', 3,
		'where', 0
	)
).play;
);

(
Pdef(\sdvir,
	Pbind(
		'instrument', 'outlet1',
		'out', 0,
		'amp', 0.1,
		'sustain', 5,
		'freq', 5000,
		'where', 0
	)
).play;
);

(
Pdef(\hnrfv,
	Pbind(
		'instrument', 'press',
		'out', 0,
		'amp', 0.1,
		'p0', 1,
		'p1', 0,
		'sustain', 10,
		'freq', 4000,
		'ratio', 2,
		'where', 0
	)
).play;
);

(
Pdef(\uirzw,
	Pbind(
		'instrument', 'press2',
		'out', 0,
		'amp', 0.1,
		'p0', 1,
		'p1', 0,
		'sustain', 10,
		'freq', 4000,
		'ratio', 2,
		'where', 0
	)
).play;
);

(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'amp', 0.2,
		'pan', 0,
		'sustain', Pexprand(0.1,0.4),
		'fundA', Pwhite(110,200),
		'fundZ', 160,
		'f1a', Pwhite(600, 800),
		'f1z', Pexprand(500,900),
		'f2a', Pwhite(2500,5000),
		'f2z', 1500,
		'rq', 0.3,
		'where', Pstutter(5, Pwhite(0,3)),
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);


(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.9,
		'num', 10,
		'freq', 3 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', Pseq([0,2,1],inf),
		\dur, 2
	)
).play;
)

Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;

//!! ( 'instrument': 'hatXLRev', 'freq': 8000, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where':0).play;

Synth(\kalimba)


(
SynthDef(\kalimba, {|out, sustain = 1, freq = 100, amp=1, ring=0.2, dur=1,noise=1|
		var env1, env2, son, mod;
		env1 = Env.new([0.0001, 1, 0.3, 0.8, 0.0001], [0.01, 0.1, 0.05, 0.4],    \exp);
		mod = EnvGen.kr(env1, 1, timeScale: sustain, doneAction:2);
		// XLine.kr(0.01, 0.9, sustain, doneAction: 2);
		env2 = EnvGen.kr(Env.perc(0.001, sustain));
		son = BPF.ar(PinkNoise.ar([amp,amp], 3), XLine.kr(freq*3,freq,0.01), 0.5);
		son = Ringz.ar(son,freq, ring, mul:0.05);
		noise = noise*WhiteNoise.ar(LFNoise1.kr(6).range(1/30, 1/60))*env2;

		Out.ar(out, (son + HPF.ar(noise,freq*2, 0.1)).tanh * mod *amp);
	}).share;
);


(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82)-12,inf).midicps,
		'amp', Pexprand(0.1,0.5),
		'ring', Pwhite(0.5,1),
		'dur', Pstutter(12, Pwrand([0.25, 0.5],[0.8,0.2],inf)) * 0.5,
		'noise', Pwhite(1, 10),
		'where', Pstutter(12, Pseq(0
	)
).play;
);

(
Pdef(\filling,
	Pbind(
		'instrument', 'filling',
		'out', 0,
		'amp', 0.1,
		'p0', 0,
		'p1', 1,
		'sustain', 10,
		'freq', 300,
		'div', 0.7,
		'decay', 0.3,
		'where', 0
	)
).play;
)

(
Pdef(\siren,
	Pbind(
		'instrument', 'glisson',
		'freq', 800,
		'freq2', 12000,

		'sustain', 6.01,
		'amp', Pexprand(0.05,0.2),
		'pan', 0,
		'where', Pseq([0,1,2],inf),
		\dur, 5
	)
).play;
)

(
Pdef(\bells,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
	 	'grow',1.3,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
)



(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'grain', //this chooses sound
			\freq: notes.at(i%notes.size).midicps,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		([0.1,0.2]@(i%2)).wait;
	};
	3.wait;
	}
}).play;
)

