

///////////////////////////////////////////////////
// History, as it was on Wed May 14 19:35:52 2014.
///////////////////////////////////////////////////

// - 0:0:0 - (federella)
(
Tdef(\cwrlo,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.01,
			'freq': 2000,
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:0:17.6 - (federella)
Tdef('cwrlo').stop;

// - 0:0:24.68 - (federella)
Tdef('friteuse').play;

// - 0:0:26.47 - (federella)
Tdef('cwrlo').play;

// - 0:0:30.21 - (federella)
Tdef('friteuse').play;

// - 0:0:31.87 - (federella)
Tdef('cwrlo').pause;

// - 0:0:32.4 - (federella)
Tdef('cwrlo').resume;

// - 0:0:33.78 - (federella)
Tdef('cwrlo').stop;

// - 0:0:35.25 - (federella)
Tdef('friteuse').play;

// - 0:0:36.3 - (federella)
Tdef('cwrlo').play;

// - 0:0:41.47 - (federella)
Tdef('cwrlo').stop;

// - 0:1:28.68 - (federella)
(
Tdef(\cwrlo,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.01,
			'freq': 5000,
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:1:40.97 - (jas)
(
Tdef(\vrezq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.01,
			'freq': 2000 + 1000,
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:3:45.58 - (jonas)
	( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 0.93, 'num': 20, 'freq': 1000, 'dcy': 0.01, 'amp': 0.5, 'where': 0	).play;

// - 0:3:50.4 - (federella)
	( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:3:58.37 - (federella)
	( 'instrument': 'grainLine', 'freq': 800, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:7.55 - (jas)
(
Tdef(\vrezq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.11,
			'freq': 2000,
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:4:19.34 - (federella)
	( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 5.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:28.54 - (jas)
Tdef('vrezq').stop;

// - 0:4:46.62 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:48.43 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:49.07 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:49.67 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:50.22 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:50.78 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:51.42 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:52.08 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:52.67 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:4:53.31 - (jonas)
	( 'instrument': 'grain', 'freq': rrand(800,1800), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:5:35.09 - (federella)
	( 'instrument': 'grainSine', 'freq': rrand(800, 5000), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:5:36.13 - (federella)
	( 'instrument': 'grainXLine', 'freq': 800, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:5:41.71 - (federella)
	( 'instrument': 'grainSine', 'freq': rrand(800, 5000), 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 0:5:49.37 - (jonas)
	( 'instrument': 'filling', 'amp': 0.1, 'p0': 0, 'p1': 1, 'sustain': 10, 'freq': 300, 'div': 0.7, 'decay': 0.3, 'where': 0	).play;

// - 0:6:7.1 - (federella)
	( 'instrument': 'klankinger', 'i_freq': 2000, 'trig': 1, 'att': 0.2, 'dcy': 2, 'ffreq': 2000, 'ampl': 0.4, 'harm': [ 1, 2, 3, 4 ], 'amp': [ 0.05, 0.05, 0.05, 0.05 ], 'ring': [ 1, 1, 1, 1 ], 'where': 0	).play;

// - 0:6:12.94 - (federella)
	( 'instrument': 'klankinger', 'i_freq': 2000, 'trig': 1, 'att': 0.2, 'dcy': 2, 'ffreq': 2000, 'ampl': 0.4, 'harm': [ 1, 2, 3, 4 ], 'amp': [ 0.05, 0.05, 0.05, 0.05 ], 'ring': [ 1, 1, 1, 1 ], 'where': 0	).play;

// - 0:6:18.68 - (jas)
(
Tdef(\vrezq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.11,
			'freq': 2000,
			'rise': 6,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:6:21.34 - (jas)
Tdef('vrezq').stop;

// - 0:7:26.63 - (jonas)
(
Tdef(\ayfpf,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.01,
			'freq': 2000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:7:37.06 - (jonas)
(
Tdef(\ayfpf,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.1,
			'freq': 2000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:7:49.31 - (federella)
(
Tdef(\cwrlo,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 1.01,
			'freq': 5000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:8:24.59 - (federella)
(
Tdef(\cwrlo,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 1.01,
			'freq': 5000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 5
		).play;

		1.wait;
	};
}).play;
);

// - 0:8:43.51 - (jas)
(
Tdef(\vrezq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.11,
			'freq': 2000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:9:5.86 - (jas)
Tdef('vrezq').stop;

// - 0:9:30.18 - (jas)
(
Tdef(\vrezq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.11,
			'freq': 2000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:9:32.87 - (jas)
Tdef('vrezq').stop;

// - 0:9:43.4 - (jonas)
(
Tdef(\ayfpf,{
	rrand(13, 34).do { |i|

		(	'instrument': 'bubble',
			'sustain': 0.1,
			'freq': 2000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': \jas
		).play;

		1.wait;
	};
}).play;
);

// - 0:9:52.15 - (jonas)
Tdef('ayfpf').stop;

// - 0:10:50.16 - (jonas)
r.nameList

// - 0:11:16.79 - (jonas)
r.nameList.at(0)

// - 0:11:21.66 - (jonas)
r.nameList.at(1)

// - 0:11:24.86 - (jonas)
r.nameList.at(2)

// - 0:11:34.45 - (jonas)
r.nameList.choose

// - 0:11:40.12 - (jas)
(
Tdef(\grainSineNM, {

	13.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 0:11:50.43 - (jas)
(
Tdef(\grainSineNM, {

	23.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 0:12:4.45 - (jas)
(
Tdef(\grainSineJas, {

	23.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 0:12:13.09 - (federella)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:12:14.41 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 0:13:37.02 - (federella)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:14:9.02 - (jonas)
(
Tdef(\ayfpf,{
	rrand(13, 34).do { |i|

		(	'instrument': 'bubble',
			'sustain': 0.1,
			'freq': 200*i,
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:14:17.6 - (jas)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:14:30.49 - (jonas)
(
Tdef(\ayfpf,{
	rrand(13, 34).do { |i|

		(	'instrument': 'bubble',
			'sustain': 0.1,
			'freq': 200* (i%15),
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:14:35.13 - (jonas)
Tdef('ayfpf').stop;

// - 0:14:36.62 - (federella)
Tdef('qnefg').play;

// - 0:14:45.08 - (federella)
Tdef('qnefg').stop;

// - 0:15:43.86 - (jonas)
(
Tdef(\ayfpf,{
	rrand(13, 34).do { |i|

		(	'instrument': 'bubble',
			'sustain': 0.1,
			'freq': 200* (i%15),
			'rise': 4,
			'amp': 1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:16:58.66 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.2,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:17:6.32 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.2,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:17:13.85 - (federella)
(
Tdef(\zwutc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press2',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 4000,
			'ratio': 2,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:17:26.17 - (federella)
(
Tdef(\mupap,{
	rrand(13, 34).do { |i|
		(	'instrument': 'klankinger',
			'i_freq': 200,
			'trig': 1,
			'att': 0.2,
			'dcy': 2,
			'ffreq': 2000,
			'ampl': 0.4,
			'harm': [ 1, 2, 3, 4 ],
			'amp': [ 0.05, 0.05, 0.05, 0.05 ],
			'ring': [ 1, 1, 1, 1 ],
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:18:5.73 - (federella)
(
Tdef(\mupap,{
	rrand(13, 34).do { |i|
		(	'instrument': 'klankinger',
			'i_freq': 200,
			'trig': 1,
			'att': 0.2,
			'dcy': 2,
			'ffreq': 2000,
			'ampl': 1,
			'harm': [ 1, 2, 3, 4 ],
			'amp': [ 0.05, 0.05, 0.05, 0.05 ],
			'ring': [ 1, 1, 1, 1 ],
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:18:25.87 - (jonas)
s.meter

// - 0:18:41.74 - (jas)
s.meter

// - 0:18:56.21 - (federella)
s.meter

// - 0:19:4.1 - (jonas)
s.meter

// - 0:19:4.92 - (federella)
Tdef('qnefg').play;

// - 0:19:29.61 - (federella)
Tdef('cwrlo').play;

// - 0:19:35.37 - (federella)
Tdef('cwrlo').stop;

// - 0:19:37.11 - (federella)
Tdef('friteuse').play;

// - 0:19:42.57 - (federella)
Tdef('bxvau').play;

// - 0:19:44.12 - (federella)
Tdef('bxvau').stop;

// - 0:20:20.2 - (federella)
(
Tdef(\cwrlo,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 1.01,
			'freq': 5000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
					).play;

		1.wait;
	};
}).play;
);

// - 0:23:43.85 - (federella)
(
Tdef(\cwrlo,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 1.01,
			'freq': 5000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
					).play;

		1.wait;
	};
}).play;
);

// - 0:24:9.12 - (federella)
Tdef('cwrlo').stop;

// - 0:24:15.52 - (federella)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 2,
			'amp': 3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:24:54.85 - (jas)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:25:19.44 - (federella)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:25:34.93 - (jas)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:25:35.01 - (federella)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:25:40.76 - (federella)
Tdef('zwutc').pause;

// - 0:25:41.75 - (federella)
Tdef('iybgc').pause;

// - 0:25:42.91 - (jonas)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 2,
			'amp': 3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:25:47.58 - (jonas)
Tdef('iybgc').stop;

// - 0:25:54.65 - (federella)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:26:6.02 - (federella)
Tdef('iybgc').stop;

// - 0:26:16.64 - (federella)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 0.5,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:26:24.14 - (jas)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:26:29.32 - (federella)
Tdef('mupap').play;

// - 0:26:30.09 - (federella)
Tdef('iybgc').stop;

// - 0:26:30.65 - (federella)
Tdef('mupap').stop;

// - 0:26:41.8 - (federella)
(
Tdef(\iybgc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 0.2,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:26:53.4 - (federella)
Tdef('iybgc').stop;

// - 0:26:54.08 - (jas)
(
Tdef(\iybgc_Jas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500,
			'sustain': 5,
			'amp': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:27:31.35 - (federella)
(
Tdef(\cvsev,{
	rrand(13, 34).do { |i|
		(	'instrument': 'filling',
			'amp': 0.1,
			'p0': 0,
			'p1': 1,
			'sustain': 10,
			'freq': 300,
			'div': 0.7,
			'decay': 0.3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:28:7.96 - (jas)
(
Tdef(\iybgc_Jas2,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500 + rrand(1750,875),
			'sustain': 5,
			'amp': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:28:39.51 - (jas)
(
Tdef(\iybgc_Jas2,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500 + rrand(1750,875,437),
			'sustain': 5,
			'amp': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:29:17.03 - (jas)
(
Tdef(\iybgc_Jas2,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500 + rrand(1750,875),
			'sustain': 5,
			'amp': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:29:26.51 - (federella)
(
Tdef(\cvsev,{
	rrand(13, 34).do { |i|
		(	'instrument': 'filling',
			'amp': 0.1,
			'p0': 0,
			'p1': 1,
			'sustain': 10,
			'freq': 300 +(i*100),
			'div': 0.7,
			'decay': 0.3,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:30:57.44 - (federella)
(
Tdef(\nsmks,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:31:10.36 - (federella)
(
Tdef(\nsmks,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:31:43.04 - (jas)
(
Tdef(\nsmks,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:32:12.55 - (federella)
(
Tdef(\nsmks,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800 +(i*200),
			'freq2': 5000 -(i*300),
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:32:13.8 - (jonas)
(
Tdef(\glisses,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': 2		).play;

		0.1.wait;
	};
}).play;
);

// - 0:32:18.19 - (jonas)
(
Tdef(\glisses,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': 2		).play;

		0.1.wait;
	};
}).play;
);

// - 0:32:25.83 - (jonas)
(
Tdef(\glisses,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': rrand(0,2)		).play;

		0.1.wait;
	};
}).play;
);

// - 0:32:26.93 - (jas)
(
Tdef(\iybgc_Jas3,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500 + rrand(1750,875,437,218),
			'sustain': 5,
			'amp': 0.1,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:32:36.66 - (jonas)
(
Tdef(\glisses,{
	var where = rrand(0,2);
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': where		).play;

		0.1.wait;
	};
}).play;
);

// - 0:32:49.27 - (jonas)
Tdef('glisses').play;

// - 0:32:58.14 - (jonas)
(
Tdef(\glisses,{
	var where = rrand(0,2);
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': where		).play;

		0.1.wait;
	};
}).play;
);

// - 0:33:1.38 - (federella)
(
Tdef(\nsmks,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800 -(i*200),
			'freq2': 5000 -(i*300),
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:33:2.5 - (jonas)
(
Tdef(\glisses,{
	var where = rrand(0,2);
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': where		).play;

		0.1.wait;
	};
}).play;
);

// - 0:33:16.27 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var where = rrand(0,2);
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': where		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:35:48.31 - (federella)
(
Tdef(\pvofs,{
	rrand(13, 34).do { |i|
		(	'instrument': 'grainSine',
			'freq': 800,
			'sustain': 0.01,
			'amp': 0.5,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:35:52.25 - (federella)
Tdef('pvofs').stop;

// - 0:35:55.61 - (jonas)
Tdef('iybgc').play;

// - 0:35:56.33 - (jonas)
Tdef('iybgc').stop;

// - 0:35:56.99 - (jonas)
Tdef('glisses').stop;

// - 0:36:12.87 - (federella)
(
Tdef(\jbyjh,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000,
			'sustain': 0.01,
			'amp': 0.5,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:36:23.31 - (federella)
(
Tdef(\jbyjh,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000,
			'sustain': 5.01,
			'amp': 0.5,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:36:37.97 - (jas)
(
Tdef(\iybgc_Jas4,{
	rrand(13, 34).do { |i|
		(	'instrument': 'feedDriftComb',
			'freq': 3500 + rrand(1750,875,437,218,109),
			'sustain': 4,
			'amp': 0.1,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:37:4.28 - (jas)
Tdef('iybgc_Jas4').stop;

// - 0:38:40.7 - (jonas)
r.nameList

// - 0:39:13.46 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var where = rrand(0,2);
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			'freq': 800, // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:39:45.05 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var where = rrand(0,2);
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			'freq': 800, // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(0)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:40:19.31 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var where = rrand(0,2);
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		i.postln;
		(	'instrument': 'glisson', //this chooses sound
			'freq': 800, // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:41:26.49 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var where = rrand(0,2);
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		i.postln;
		(	'instrument': 'glisson', //this chooses sound
			'freq': 800, // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:41:35.34 - (federella)
Tdef('iybgc').play;

// - 0:41:36.85 - (federella)
Tdef('jbyjh').play;

// - 0:41:37.91 - (federella)
Tdef('iybgc').pause;

// - 0:41:38.82 - (federella)
Tdef('jbyjh').pause;

// - 0:41:42.87 - (federella)
Tdef('pvofs').play;

// - 0:41:44.74 - (federella)
Tdef('pvofs').stop;

// - 0:42:4.92 - (jas)
(
Tdef(\nsmks,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800,
			'freq2': 1200,
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:42:19.09 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var where = rrand(0,2);
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			'freq': 800+(i*50), // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:42:33.53 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			'freq': rrand(200,800)+(i*50), // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:43:8.27 - (jas)
(
Tdef(\nsmksJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800 + rrand(400,200,100),
			'freq2': 1200,
			'sustain': 1.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:43:36.86 - (jas)
(
Tdef(\nsmksJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800 + rrand(400,200,100),
			'freq2': 1200 + rrand(600,300,150),
			'sustain': 1.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:43:56.06 - (jas)
(
Tdef(\nsmksJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson',
			'freq': 800 + rrand(400,200,100),
			'freq2': 1200 + rrand(600,300,150),
			'sustain': 1.0,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 0:44:24.14 - (jas)
Tdef('qnefg').play;

// - 0:44:27.41 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			'freq': rrand(200,800)+(i*50), // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:44:28.84 - (jas)
Tdef('qnefg').stop;

// - 0:44:40.28 - (jas)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:44:49.39 - (jas)
(
Tdef(\vrezq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'bubble',
			'sustain': 0.11,
			'freq': 2000,
			'rise': i,
			'amp': 1,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:45:27.11 - (federella)
(
Tdef(\qnefg,{
	rrand(13, 34).do { |i|
		(	'instrument': 'delta_demand2',
			'start': 0.05,
			'grow': 0.93,
			'num': 20,
			'freq': 1000,
			'dcy': 0.01,
			'amp': 0.5,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 0:45:34.98 - (jonas)
Tdef('glisses').stop;

// - 0:46:12.55 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			'freq': rrand(200,800)+(i*50), // this decides freq
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 0:46:18.73 - (jonas)
Tdef('glisses').stop;

// - 0:47:8.53 - (federella)
(
Pdef(\kaewy,
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

// - 0:47:22.1 - (federella)
Pdef('kaewy').stop;

// - 0:47:23.89 - (federella)
Tdef('zwutc').pause;

// - 0:47:35.11 - (federella)
Pdef('kaewy').play;

// - 0:47:43.97 - (federella)
Pdef('kaewy').stop;

// - 0:48:4.25 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', 2000,
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 0
	).trace
).play;
);

// - 0:49:10.38 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', 2000,
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 0,
		\dur, 0.5
	).trace
).play;
);

// - 0:49:42.19 - (jonas)
Pdef('bubbles').stop;

// - 0:49:43.49 - (jonas)
Pdef('bubbles').play;

// - 0:49:44.94 - (jonas)
Pdef('bubbles').stop;

// - 0:50:58.87 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],2),
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 0,
		\dur, 0.5
	).trace
).play;
);

// - 0:51:53.94 - (jas)
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

// - 0:52:9.46 - (jas)
(
Pdef(\bbl_Jas,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.02,
		'freq', Prand([440, 750, 1000, 500], 5),
		'rise', 5,
		'amp', 1,
		'pan', 0,
		'where', Pseq([0, 1, 2, 3], inf)

	)
).play;
);

// - 0:52:29.16 - (jas)
(
Pdef(\bbl_Jas,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.03,
		'freq', Prand([440, 750, 1000, 500], 5),
		'rise', 5,
		'amp', 1,
		'pan', 0,
		'where', Pseq([0, 1, 2, 3], inf)

	)
).play;
);

// - 0:52:54.38 - (federella)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],2),
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 0,
		\dur, 0.5
	).trace
).play;
);

// - 0:53:28.12 - (jas)
(
Pdef(\bbl_Jas,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.03,
		'freq', Prand([440, 750, 1000, 500], 5),
		'rise', 5,
		'amp', 1,
		'pan', 0,
		'where', Pseq([0, 1, 2, 3], inf)

	)
).play;
);

// - 0:54:4.83 - (federella)
(
Pdef(\kaewy,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', 2000,
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 1
	)
).play;
);

// - 0:54:16.52 - (jas)
(
Pdef(\bbl_Jas,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.03,
		'freq', Prand([440, 750, 1000, 500], 5),
		'rise', 5,
		'amp', 1,
		'pan', 0,
		'where', Pseq([0, 1, 2, 3], inf),
		'dur', 0.5
	)
).play;
);

// - 0:55:15.36 - (federella)
(
Pdef(\kaewy,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000, 1000], inf),
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 1
	)
).play;
);

// - 0:55:28.46 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],3),
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 0,
		\dur, 0.5
	).trace
).play;
);

// - 0:55:38.54 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],3),
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 1,
		\dur, 0.5
	).trace
).play;
);

// - 0:55:48.46 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],inf),
		'rise', 4,
		'amp', 1,
		'pan', 0,
		'where', 1,
		\dur, 0.25
	).trace
).play;
);

// - 0:56:1.89 - (jas)
Pdef('bbl_Jas').play;

// - 0:56:7.25 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],inf),
		'rise', 4,
		'amp', Pwhite(0.3,1),
		'pan', 0,
		'where', 1,
		\dur, 0.25
	).trace
).play;
);

// - 0:56:15.46 - (jas)
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

// - 0:56:17.08 - (federella)
(
Tdef(\wotkq,{
	rrand(13, 34).do { |i|
		(	'instrument': 'grain',
			'freq': 800,
			'sustain': 0.01,
			'amp': 0.5,
			'pan': 0,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:56:33.87 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],inf),
		'rise', 4,
		'amp', Pwhite(0.3, 1),
		'pan', 0,
		'where', Pstutter(7,Pseq([0,1,2],inf)),
		\dur, 0.25
	).trace
).play;
);

// - 0:56:40.06 - (federella)
(
Tdef(\jbyjh,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000,
			'sustain': 5.01,
			'amp': 2,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 0:56:50.47 - (federella)
(
Tdef(\jbyjh,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000,
			'sustain': 3.01,
			'amp': 2,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 0:56:53.4 - (jonas)
(
Pdef(\bubbles,
	Pbind(
		'instrument', 'bubble',
		'out', 0,
		'sustain', 0.01,
		'freq', Pseq([2000,3000,4000,1000,500],inf),
		'rise', 4,
		'amp', Pwhite(0.3, 1),
		'pan', 0,
		'where', Pstutter(7,Pseq([0,1,2],inf)),
		\dur, 0.25
	)
).play;
);

// - 0:56:57.91 - (jas)
Pdef('stwmp_jas').play;

// - 0:57:0.39 - (jas)
Pdef('stwmp_jas').stop;

// - 0:57:18.78 - (federella)
(
Tdef(\mupap,{
	rrand(13, 34).do { |i|
		(	'instrument': 'klankinger',
			'i_freq': 200,
			'trig': 1,
			'att': 0.2,
			'dcy': 2,
			'ffreq': 2000,
			'ampl': 1,
			'harm': [ 1, 2, 3, 4 ],
			'amp': [ 0.05, 0.05, 0.05, 0.05 ],
			'ring': [ 1, 1, 1, 1 ],
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 0:57:36.5 - (federella)
(
Tdef(\mupap,{
	rrand(13, 34).do { |i|
		(	'instrument': 'klankinger',
			'i_freq': 200,
			'trig': 1,
			'att': 0.2,
			'dcy': 2,
			'ffreq': 5000,
			'ampl': 1,
			'harm': [ 1, 2, 3, 4 ],
			'amp': [ 0.05, 0.05, 0.05, 0.05 ],
			'ring': [ 1, 1, 1, 1 ],
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 0:57:44.59 - (federella)
(
Tdef(\mupap,{
	rrand(13, 34).do { |i|
		(	'instrument': 'klankinger',
			'i_freq': 500,
			'trig': 1,
			'att': 0.2,
			'dcy': 2,
			'ffreq': 5000,
			'ampl': 1,
			'harm': [ 1, 2, 3, 4 ],
			'amp': [ 0.05, 0.05, 0.05, 0.05 ],
			'ring': [ 1, 1, 1, 1 ],
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 0:58:1.49 - (federella)
(
Tdef(\mupap,{
	rrand(13, 34).do { |i|
		(	'instrument': 'klankinger',
			'i_freq': 500,
			'trig': 1,
			'att': 0.2,
			'dcy': 2,
			'ffreq': 5000,
			'ampl': 1,
			'harm': [ 1, 2, 3, 4 ],
			'amp': [ 0.05, 0.05, 0.05, 0.05 ],
			'ring': [ 1, 5, 1, 10 ],
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 0:58:20.03 - (federella)
Tdef('zwutc').pause;

// - 0:58:21.68 - (federella)
Pdef('kaewy').stop;

// - 0:58:32.1 - (federella)
(
Tdef(\dotmw,{
	rrand(13, 34).do { |i|
		(	'instrument': 'outlet1',
			'amp': 0.1,
			'sustain': 5,
			'freq': 5000,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 0:58:35.97 - (federella)
Tdef('dotmw').stop;

// - 0:59:24.72 - (federella)
(
Tdef(\zwutc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press2',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 4000,
			'ratio': 2,
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 0:59:53.48 - (jas)
(
Tdef(\jbyjh,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000,
			'sustain': 5.01,
			'amp': 2,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 1:0:45.93 - (jas)
(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 5.01,
			'amp': 2,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 1:1:16.36 - (jas)
(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 4.01,
			'amp': 1,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 1:1:31.15 - (jas)
Tdef('jbyjhJas').stop;

// - 1:1:34.91 - (jas)
(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 3.01,
			'amp': 1,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 1:1:49.84 - (jas)
Tdef('jbyjhJas').stop;

// - 1:1:58.62 - (jas)
(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 6.01,
			'amp': 0.1,
			'pan': 0,
			'where': 2
		).play;

		1.wait;
	};
}).play;
);

// - 1:2:48.73 - (federella)
(
Tdef(\zwutc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press2',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 2000,
			'ratio': 2,
			'where': 1

		).play;

		2.wait;
	};
}).play;
);

// - 1:3:19.62 - (jas)
(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 6.01,
			'amp': 0.1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		2.wait;
	};
}).play;
);

// - 1:3:47.87 - (federella)
(
Tdef(\zwutc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press2',
			'amp': Pseq([1, 0.5, 0.1]),
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 2000,
			'ratio': 2,
			'where': 1

		).play;

		2.wait;
	};
}).play;
);

// - 1:3:59.46 - (jas)
Tdef('jbyjhJas').stop;

// - 1:4:3.74 - (jas)
(
Tdef(\jbyjhJas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLine',
			'freq': 8000 + rrand(4000,2000,1000,500,250,125),
			'sustain': 6.01,
			'amp': 0.1,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		3.wait;
	};
}).play;
);

// - 1:4:4.19 - (jonas)
Pdef('bubbles').stop;

// - 1:4:15.45 - (federella)
(
Tdef(\zwutc,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press2',
			'amp': Pseq([1, 0.5, 0.1]),
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 2000,
			'ratio': 1,
			'where': 1

		).play;

		2.wait;
	};
}).play;
);

// - 1:4:26.36 - (federella)
Tdef('zwutc').stop;

// - 1:4:31.97 - (federella)
Tdef('zwutc').play;

// - 1:4:36.12 - (federella)
Tdef('zwutc').stop;

// - 1:4:41.86 - (federella)
Tdef('zwutc').play;

// - 1:5:1.23 - (federella)
Tdef('zwutc').stop;

// - 1:5:17.34 - (jas)
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
);

// - 1:5:24.58 - (federella)
(
Pdef(\nqlfv,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq,
		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:5:27.84 - (jonas)
	( 'instrument': 'feedDriftComb2', 'freq': 3500, 'sustain': 2, 'amp': 1, 'driftFreq': 2, 'decay': 1, 'where': 0	).play;

// - 1:5:31 - (jonas)
	( 'instrument': 'feedDriftComb3', 'freq': 3500, 'sustain': 2, 'amp': 3, 'where': 0	).play;

// - 1:7:0.73 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.2,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:7:19.3 - (jonas)
	( 'instrument': 'filling', 'amp': 0.01, 'p0': 0, 'p1': 1, 'sustain': 10, 'freq': 300, 'div': 0.7, 'decay': 0.3, 'where': 0	).play;

// - 1:7:28.2 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:7:38.79 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.1,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:7:39.2 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': 0
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:7:45.27 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.0,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:7:53.29 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.0,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:8:2.6 - (federella)
(
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.1,
			'pan': 0,
			'sustain': 0.3,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:8:17.46 - (jonas)
( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0 ).play;

// - 1:8:18.77 - (jonas)
( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0 ).play;

// - 1:8:24.74 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': 0
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:8:24.86 - (jonas)
( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.1, 'pan': 0, 'where': 0 ).play;

// - 1:8:26.42 - (jonas)
( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.1, 'pan': 0, 'where': 0 ).play;

// - 1:8:34.18 - (jonas)
( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.05, 'pan': 0, 'where': 0 ).play;

// - 1:8:35.74 - (jonas)
( 'instrument': 'glisson', 'freq': 800, 'freq2': 1200, 'sustain': 0.01, 'amp': 0.05, 'pan': 0, 'where': 0 ).play;

// - 1:8:36.66 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:8:51.31 - (jonas)
	( 'instrument': 'hatXLine', 'freq': 8000, 'sustain': 0.01, 'amp': 0.1, 'pan': 0, 'where': 0	).play;

// - 1:8:52.76 - (jonas)
	( 'instrument': 'hatXLine', 'freq': 8000, 'sustain': 0.01, 'amp': 0.1, 'pan': 0, 'where': 0	).play;

// - 1:9:6.25 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 8000,
		'sustain', 0.01,
		'amp', 0.1,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 1:9:14.77 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 8000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 1:9:24.49 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 220 + rrand(110,65),
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:9:30.3 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 8000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', 0,
		\dur, Pseq([0.25,0.5],inf)
	)
).play;
);

// - 1:9:36.98 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 8000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', \all,
		\dur, Pseq([0.25,0.5],inf)
	)
).play;
);

// - 1:9:40.01 - (federella)
(
 //rane
Tdef(\bxvau,{
	rrand(13, 34).do { |i|
		(	'instrument': 'ur2',
			'amp': 0.1,
			'pan': 0,
			'sustain': 2.0,
			'fundA': 110,
			'fundZ': 160,
			'f1a': 600,
			'f1z': 900,
			'f2a': 2500,
			'f2z': 1500,
			'rq': 0.1,
			'where': r.nameList.choose		).play;

		1.wait;
	};
}).play;
);

// - 1:9:41.73 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 220 + rrand(110,65),
		'sustain': 0.02,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:10:8.16 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 8000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.5],inf)
	)
).play;
);

// - 1:10:14.88 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 4000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.5],inf)
	)
).play;
);

// - 1:10:16.93 - (jas)
(
Tdef(\grainSineJas, {

	33.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 220 + rrand(110,65),
		'sustain': 0.02,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:10:20.84 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', 1000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.5],inf)
	)
).play;
);

// - 1:10:26.79 - (jas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (230 * (i%5)),
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': rrand(2, 18)
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:10:38.68 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLRev',
		'out', 0,
		'freq', 1000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.5],inf)
	)
).play;
);

// - 1:10:50.95 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLRev',
		'out', 0,
		'freq', 1000,
		'sustain', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.125],inf)
	)
).play;
);

// - 1:10:55.97 - (jas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 * (i%5)),
		'sustain': 0.01,
		'amp': 0.4,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:10:57.16 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLRev',
		'out', 0,
		'freq', 1000,
		'legato', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.125],inf)
	)
).play;
);

// - 1:11:10.36 - (jas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 * (i%4)),
		'sustain': 0.01,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:11:11.2 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'out', 0,
		'freq', Pwhite(1000,500),
		'legato', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.125],inf)
	)
).play;
);

// - 1:11:17.76 - (jonas)
(
Pdef(\hhats,
	Pbind(
		'instrument', 'hatXLine',
		'freq', Pwhite(4000,500),
		'legato', 0.1,
		'amp', 0.1,
		'pan', 0,
		'where', Pseq(r.nameList,inf),
		\dur, Pseq([0.25,0.125],inf)
	)
).play;
);

// - 1:11:28.07 - (jas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 * (i%10)),
		'sustain': 0.01,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:11:39.47 - (jas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 * (i%10)),
		'sustain': 0.11,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:11:46.1 - (jonas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 / (i%10)),
		'sustain': 0.01,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:11:49.7 - (jas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 * (i%10)),
		'sustain': 0.05,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:12:1.64 - (jonas)
(
Tdef(\grainSineJas3, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 / (i%10)),
		'sustain': 0.05,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:12:7.76 - (jonas)
(
Tdef(\grainSineJasJonas, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 440 + (220 / (i%10)),
		'sustain': 0.05,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:12:17.7 - (jas)
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

		0.1.wait;
	}



}).play;
);

// - 1:12:29.26 - (jas)
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
);

// - 1:12:39.37 - (jonas)
(
Tdef(\grainSineJasJonas, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 1440 + (220 / (i%10)),
		'sustain': 0.05,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:12:45.82 - (federella)
(
Tdef(\sxdpb,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 4000,
			'ratio': 2,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:12:50.16 - (jonas)
(
Tdef(\grainSineJasJonas, {

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 2440 + (220 / (i%10)),
		'sustain': 0.05,
		'amp': 0.3,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:13:20.85 - (jonas)
(
Tdef(\pressJonas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': 4000,
			'ratio': 2,
			'where': 0
		).play;

		1.wait;
	};
}).play;
);

// - 1:13:24.82 - (jas)
(
Tdef(\spatz, {

	10.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': 0
		).play;

		i.postln;
		0.1.wait;
	}



}).play;
);

// - 1:13:32.76 - (jas)
(
Tdef(\spatz, {

	10.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800.rand + 200,
		'sustain': 0.01,
		'amp': 0.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		0.1.wait;
	}



}).play;
);

// - 1:13:39.43 - (jonas)
(
Tdef(\pressJonas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 1,
			'freq': 4000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 1:13:40.67 - (jas)
(
Tdef(\spatz, {

	10.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800.rand + 200,
		'sustain': 0.01,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		0.1.wait;
	}



}).play;
);

// - 1:13:49.35 - (jas)
(
Tdef(\spatz, {

	10.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800.rand + 200,
		'sustain': 0.01,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		1.1.wait;
	}



}).play;
);

// - 1:13:50.99 - (federella)
(
Tdef(\sxdpb,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 10,
			'freq': Pseq([4000, 2000, 7000, 1000]),
			'ratio': 2,
			'where': 0
		).play;

		3.wait;
	};
}).play;
);

// - 1:13:51.01 - (jonas)
(
Tdef(\pressJonas,{
	rrand(13, 34).do { |i|
		(	'instrument': 'press',
			'amp': 0.01,
			'p0': 1,
			'p1': 0,
			'sustain': 1,
			'freq': 4000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		1.wait;
	};
}).play;
);

// - 1:14:2.52 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.01,
			'p0': 1,
			'p1': 0,
			'sustain': 1,
			'freq': 4000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:14:7.01 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.05,
			'p0': 1,
			'p1': 0,
			'sustain': 1,
			'freq': 4000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:14:28.96 - (jas)
(
Tdef(\spatz, {

	10.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800 + (400 * (i%20)),
		'sustain': 0.01,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		1.1.wait;
	}



}).play;
);

// - 1:14:46.31 - (jas)
(
Tdef(\spatz, {

	20.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800 + (400 * (i%20)),
		'sustain': 0.01,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		1.1.wait;
	}



}).play;
);

// - 1:15:2.55 - (jas)
(
Tdef(\spatz, {

	20.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800 + (400 * (i%20)),
		'sustain': 0.02,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		1.1.wait;
	}



}).play;
);

// - 1:15:13.41 - (jas)
(
Tdef(\spatz, {

	20.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800 + (400 * (i%20)),
		'sustain': 0.01,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		1.1.wait;
	}



}).play;
);

// - 1:15:23.87 - (jas)
(
Tdef(\spatz, {

	20.do{|i|

		(
		'instrument': 'grainSine',
		'freq': 800 + (400 * (i%20)),
		'sustain': 0.01,
		'amp': 0.6,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		i.postln;
		1.5.wait;
	}



}).play;
);

// - 1:15:36.29 - (jonas)
Tdef('pressJonas').play;

// - 1:15:41.04 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.02,
			'p0': 1,
			'p1': 0,
			'sustain': 1,
			'freq': 4000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:15:44.02 - (jas)
(
Tdef(\grainSineJas2, {

	100.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 200,
		'sustain': 0.01,
		'amp': 1,
		'pan': 0,
		'where': 0
		).play;

		0.1.wait;
	}



}).play;
);

// - 1:15:50.44 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.02,
			'p0': 1,
			'p1': 0,
			'sustain': 0.5,
			'freq': 14000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:15:55.58 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.03,
			'p0': 1,
			'p1': 0,
			'sustain': 0.5,
			'freq': 14000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:5.5 - (jas)
(
Tdef(\grainSineJas2, {

	100.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 100,
		'sustain': 0.01,
		'amp': 1,
		'pan': 0,
		'where': 0
		).play;

		1.1.wait;
	}



}).play;
);

// - 1:16:7.5 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.04,
			'p0': 1,
			'p1': 0,
			'sustain': 0.5,
			'freq': 10000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:13.28 - (federella)
(
Pdef(\xsxvl,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', 1000,
		'dcy', 0.01,
		'amp', 0.1,
		'where', 0
	)
).play;
);

// - 1:16:16.25 - (jas)
(
Tdef(\grainSineJas2, {

	100.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 100,
		'sustain': 0.01,
		'amp': 1,
		'pan': 0,
		'where': (220 * (i%20))
		).play;

		1.1.wait;
	}



}).play;
);

// - 1:16:27.07 - (federella)
Pdef('nqlfv').stop;

// - 1:16:27.61 - (federella)
Pdef('xsxvl').stop;

// - 1:16:28.78 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.04,
			'p0': 1,
			'p1': 0,
			'sustain': 0.8,
			'freq': 10000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:34.1 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.05,
			'p0': 1,
			'p1': 0,
			'sustain': 0.8,
			'freq': 10000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:35.61 - (jas)
(
Tdef(\grainSineJas2, {

	100.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 100,
		'sustain': 0.01,
		'amp': 1,
		'pan': 0,
		'where': (220 * (i%20))
		).play;

		1.1.wait;
	}



}).play;
);

// - 1:16:39.76 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 0.8,
			'freq': 10000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:41.89 - (federella)
(
Pdef(\kromm,
	Pbind(
		'instrument', 'dirac',
		'out', 0,
		'amp', 0.1,
		'pan', 0,
		'sustain', 1,
		'where', 2
	)
).play;
);

// - 1:16:43.56 - (jas)
(
Tdef(\grainSineJas2, {

	100.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 100,
		'sustain': 0.01,
		'amp': 1.5,
		'pan': 0,
		'where': (220 * (i%20))
		).play;

		1.1.wait;
	}



}).play;
);

// - 1:16:47.32 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 0.8,
			'freq': 7000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:54.3 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.1,
			'p0': 1,
			'p1': 0,
			'sustain': 0.8,
			'freq': 9000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:16:59.16 - (federella)
(
Pdef(\kromm,
	Pbind(
		'instrument', 'dirac',
		'out', 0,
		'amp', 0.1,
		'pan', 0,
		'sustain', 1,
		'where', r.nameList.choose
	)
).play;
);

// - 1:17:9.77 - (jas)
(
Tdef(\grainSineJas2, {

	100.do{

		(
		'instrument': 'grainSine',
		'freq': 440.rand + 100,
		'sustain': 0.01,
		'amp': 1.5,
		'pan': 0,
		'where': r.nameList.choose
		).play;

		1.1.wait;
	}



}).play;
);

// - 1:17:13.54 - (jonas)
(
Tdef(\pressJonas,{
	100.do { |i|
		(	'instrument': 'press',
			'amp': 0.05,
			'p0': 1,
			'p1': 0,
			'sustain': 0.3,
			'freq': 8000,
			'ratio': 2,
			'where': r.nameList.choose
		).play;

		0.1.wait;
	};
}).play;
);

// - 1:17:13.6 - (federella)
(
Pdef(\kromm,
	Pbind(
		'instrument', 'dirac',
		'out', 0,
		'amp', 0.1,
		'pan', 0,
		'sustain', 1,
		'where', 0
	)
).play;
);

// - 1:17:23.99 - (jonas)
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
);

// - 1:17:29.23 - (jas)
(
Tdef(\bubbleNM, {

	50.do{
( 'instrument': 'bubble', 'sustain': 0.01, 'freq': 500, 'rise': 6, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
0.1.wait;
	}



}).play;
);

// - 1:17:29.32 - (federella)
(
Pdef(\zyioc,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 1,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:17:37.2 - (federella)
(
Pdef(\zyioc,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.1,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:17:49.76 - (federella)
(
Pdef(\zyioc,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.05,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:17:57.61 - (federella)
(
Pdef(\zyioc,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.01,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:17:58.14 - (jas)
(
Tdef(\bubbleNM, {

	50.do{
( 'instrument': 'bubble', 'sustain': 0.01, 'freq': 500 + rrand(250,125), 'rise': 6, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
0.1.wait;
	}



}).play;
);

// - 1:17:59.24 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.1,
		'out', 0,
		'where', 0,
		\dur, 5
	)
).play;
);

// - 1:18:7.27 - (jas)
(
Tdef(\bubbleNM, {

	50.do{
( 'instrument': 'bubble', 'sustain': 0.01, 'freq': 500 + rrand(250,125), 'rise': 6, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
1.1.wait;
	}



}).play;
);

// - 1:18:10.95 - (federella)
(
Pdef(\zyioc,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.001,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:18:13.38 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.1,
		'out', 0,
		'where', Pseq(r.nameList,inf),
		\dur, 5
	)
).play;
);

// - 1:18:21.1 - (federella)
(
Pdef(\zyioc,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.005,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:18:23.87 - (jas)
(
Tdef(\bubbleNM, {

	50.do{
( 'instrument': 'bubble', 'sustain': 0.01, 'freq': 500 + rrand(250,125), 'rise': 6, 'amp': 2, 'pan': 0, 'where': r.nameList.choose
).play;
1.5.wait;
	}



}).play;
);

// - 1:18:24.24 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 1500,
		'sustain', 2,
		'amp', 0.1,
		'out', 0,
		'where', Pseq(r.nameList,inf),
		\dur, 5
	)
).play;
);

// - 1:18:37.54 - (federella)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.1,
		'driftFreq', 2,
		'decay', 1,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:18:38.43 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 500,
		'sustain', 2,
		'amp', 0.1,
		'out', 0,
		'where', Pseq(r.nameList,inf),
		\dur, 5
	)
).play;
);

// - 1:18:39.97 - (jonas)
Pdef('hhats').stop;

// - 1:18:43.95 - (federella)
Pdef('zyioc').stop;

// - 1:18:44.59 - (federella)
Pdef('kromm').stop;

// - 1:18:44.73 - (jas)
(
Tdef(\delta_demand2NM, {

	50.do{
( 'instrument': 'delta_demand2', 'start': 0.05, 'grow': 2.93, 'num': 30, 'freq': 1000, 'rise': 6, 'dcy': 0.01, 'amp': 1, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
);

// - 1:18:54.47 - (jonas)
r.nameList

// - 1:18:59.79 - (federella)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:19:29.8 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 500,
		'sustain', 2,
		'amp', Pseq([0.4,0.01,0.4],inf),
		'out', 0,
		'where', Pseq([\jas, \federella, \jonas ],inf),
		\dur, 5
	)
).play;
);

// - 1:19:34.78 - (jas)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:19:39.02 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', 500,
		'sustain', 2,
		'amp', Pseq([0.4, 0.01,0.4],inf) * 2,
		'out', 0,
		'where', Pseq([\jas, \federella, \jonas ],inf),
		\dur, 5
	)
).play;
);

// - 1:19:43.27 - (jas)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.2,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:19:52.28 - (jas)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.5,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:20:6.55 - (jas)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 0.8,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:20:21.33 - (federella)
(
Pdef(\auqtc,
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

// - 1:20:23.76 - (jas)
(
Pdef(\qllhb,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:20:30.01 - (federella)
(
Pdef(\jkfuk,
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

// - 1:20:33.51 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', Pwhite(250,1500),
		'sustain', 2,
		'amp', Pseq([1, 0.01, 1],inf) * 2,
		'out', 0,
		'where', Pseq([\jas, \federella, \jonas ],inf),
		\dur, 5
	)
).play;
);

// - 1:20:36.34 - (federella)
Pdef('qllhb').stop;

// - 1:20:38.09 - (federella)
Pdef('jkfuk').stop;

// - 1:20:40.11 - (federella)
Pdef('auqtc').stop;

// - 1:20:42.8 - (federella)
Pdef('jkfuk').play;

// - 1:20:47.39 - (federella)
Pdef('jkfuk').stop;

// - 1:20:52.26 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', r.nameList.choose
	)
).play;
);

// - 1:20:53.79 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', Pwhite(250,1500),
		'sustain', Pexprand(0.4,2),
		'amp', Pseq([1, 0.01, 1],inf) * 2,
		'out', 0,
		'where', Pseq([\jas, \federella, \jonas ],inf),
		\dur, 5
	)
).play;
);

// - 1:20:56.62 - (federella)
(
Pdef(\erxmg,
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

// - 1:20:59.76 - (jonas)
(
Pdef(\feedJonas,
	Pbind(
		'instrument', 'feedDriftComb',
		'freq', Pwhite(250,1500),
		'sustain', Pexprand(0.4,2),
		'amp', Pseq([1, 0.01, 1],inf) * 2,
		'where', Pseq([\jas, \federella, \jonas ],inf),
		\dur, 5
	)
).play;
);

// - 1:21:7.56 - (jas)
Pdef('qllhb').stop;

// - 1:21:16.77 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', r.nameList.choose
	)
).play;
);

// - 1:21:24.52 - (federella)
Pdef('erxmg').stop;

// - 1:21:29.87 - (federella)
(
Pdef(\tkviq,
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

// - 1:21:40.85 - (jas)
(
Tdef(\glissonJas, {

	50.do{
( 'instrument': 'glisson', 'freq': 1200.rand + 150, 'sustain': 0.01, 'amp': 3, 'pan': 0, 'where': r.nameList.choose	).play;
0.1.wait;
	};




}).play;

);

// - 1:21:43.18 - (federella)
Pdef('tkviq').stop;

// - 1:21:44.62 - (federella)
Pdef('tkviq').play;

// - 1:22:9.72 - (federella)
Pdef('tkviq').stop;

// - 1:22:19.87 - (federella)
(
Pdef(\srsiy,
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

// - 1:22:29.39 - (federella)
Pdef('srsiy').stop;

// - 1:22:34.26 - (jonas)
(
Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 0.5,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', Prand(r.nameList,inf)
	)
).play;
);

// - 1:22:36.31 - (jonas)
Pdef('feedJonas').stop;

// - 1:22:37.96 - (jonas)
Pdef('feedJasJo').stop;

// - 1:22:42.36 - (jonas)
(
Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 0.5,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', Prand(r.nameList,inf)
	)
).play;
);

// - 1:23:5.79 - (jonas)
Pdef('feedJasJo').stop;

// - 1:23:7.52 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:23:30.21 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 2,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:23:38.58 - (jonas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 2,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:23:42.77 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 2,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', 0
	)
).play;
);

// - 1:23:51.67 - (jonas)
r.nameList

// - 1:23:58.91 - (jas)
s.meter

// - 1:23:59.45 - (federella)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:24:0.25 - (jonas)
Pdef('feedJasJo').play;

// - 1:24:22.08 - (federella)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 5,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:24:24.32 - (jonas)
(
Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 0.5,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', 0
		//Prand(r.nameList,inf)
	)
).play;
);

// - 1:24:34.27 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 2,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:24:38.26 - (federella)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 5,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:24:46.81 - (jonas)
(
Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', 0
		//Prand(r.nameList,inf)
	)
).play;
);

// - 1:24:51.9 - (jas)
(
Pdef(\qllhbJas,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 3500,
		'sustain', 2,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 0,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:24:55.6 - (jonas)
(
Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 1,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', Prand(r.nameList,inf)
	)
).play;
);

// - 1:25:3.78 - (jonas)
(
Pdef(\feedJasJo,
	Pbind(
		'instrument', 'feedDriftComb2',
		'freq', 5500,
		'sustain', 3,
		'amp', 2,
		'driftFreq', 2,
		'decay', 5,
		'out', 1,
		'where', Prand(r.nameList,inf)
	)
).play;
);

// - 1:25:14.09 - (jonas)
(
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
);

// - 1:25:15.11 - (jas)
(
Tdef(\glissonJas, {

	50.do{
( 'instrument': 'glisson', 'freq': 1200.rand + 150, 'sustain': 0.01, 'amp': 3, 'pan': 0, 'where': r.nameList.choose	).play;
1.1.wait;
	};




}).play;

);

// - 1:25:33 - (jonas)
(
Tdef(\glissonJas, {

	50.do{
( 'instrument': 'glisson', 'freq': 1200.rand + 150, 'sustain': 0.01, 'amp': 3, 'pan': 0, 'where': r.nameList.choose	).play;
0.6.wait;
	};




}).play;

);

// - 1:25:41.43 - (federella)
(
Tdef(\vugth,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLRev',
			'freq': 8000,
			'sustain': 0.01,
			'amp': 0.5,
			'pan': 0,
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 1:25:45.83 - (jonas)
(
Tdef(\glissonJasJo, {

	50.do{
( 'instrument': 'grain', 'freq': 1200.rand + 150, 'sustain': 0.01, 'amp': 3, 'pan': 0, 'where': r.nameList.choose	).play;
0.6.wait;
	};




}).play;

);

// - 1:25:50.54 - (jonas)
Tdef('glissonJas').stop;

// - 1:25:52.73 - (federella)
(
Tdef(\vugth,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLRev',
			'freq': 8000,
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': 1
		).play;

		1.wait;
	};
}).play;
);

// - 1:25:53.46 - (jas)
(
Tdef(\glissonJas, {

	50.do{
( 'instrument': 'glisson', 'freq': 1200 + rrand(600,300,150), 'sustain': 0.01, 'amp': 1, 'pan': 0, 'where': r.nameList.choose	).play;
1.1.wait;
	};




}).play;

);

// - 1:26:5.36 - (federella)
(
Tdef(\vugth,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLRev',
			'freq': 8000,
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': 1
		).play;

		4.wait;
	};
}).play;
);

// - 1:26:22.17 - (jas)
(
Tdef(\grainXLRevJas, {

	100.do{
( 'instrument': 'grainXLRev', 'freq': 800.rand + 400, 'sustain': 0.31, 'amp': 0.5, 'pan': 0, 'where': rrand(2, 18)	).play;
0.1.wait;
	}



}).play;
);

// - 1:26:34.4 - (federella)
(
Tdef(\vugth,{
	rrand(13, 34).do { |i|
		(	'instrument': 'hatXLRev',
			'freq': 8000,
			'sustain': 2.01,
			'amp': 0.5,
			'pan': 0,
			'where': r.nameList.choose
		).play;

		4.wait;
	};
}).play;
);

// - 1:26:35.44 - (jas)
(
Tdef(\grainXLRevJas, {

	100.do{
( 'instrument': 'grainXLRev', 'freq': 800.rand + 400, 'sustain': 0.31, 'amp': 0.5, 'pan': 0, 'where': 0	).play;
0.1.wait;
	}



}).play;
);

// - 1:26:43.99 - (jonas)
(
Tdef(\grainXLRevJasJo, {

	100.do{
( 'instrument': 'grainXLRev', 'freq': 800.rand - 400, 'sustain': 0.31, 'amp': 0.5, 'pan': 0, 'where': rrand(2, 18)	).play;
0.1.wait;
	}



}).play;
);

// - 1:27:0.62 - (jas)
(
Tdef(\grainXLRevJas, {

	100.do{
( 'instrument': 'grainXLRev', 'freq': 800.rand + 400, 'sustain': 0.31, 'amp': 0.4, 'pan': 0, 'where': r.nameList.choose	).play;
1.1.wait;
	}



}).play;
);

// - 1:27:1.88 - (jonas)
(
Tdef(\grainXLRevJasJo, {

	100.do{
( 'instrument': 'grainXLRev', 'freq': 1800.rand - 400, 'sustain': 0.31, 'amp': exprand(0.1,0.8), 'pan': 0, 'where': rrand(2, 18)	).play;
0.1.wait;
	}



}).play;
);

// - 1:27:23.57 - (jonas)
Pdef('feedJasJo').stop;

// - 1:29:4.29 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			\freq: notes,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:29:18.89 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			\freq: notes.midicps,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:29:38.63 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			\freq: notes.at(0).midicps,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:29:46.4 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			\freq: notes.at(i).midicps,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:29:58.82 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			\freq: notes.at(i%notes.size).midicps,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		0.1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:30:6.61 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'glisson', //this chooses sound
			\freq: notes.at(i%notes.size).midicps,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:30:14.2 - (jonas)
(
Tdef(\glisses,{
	inf.do {
	var names = [\jas, \federella, \jonas ]; // equals r.nameList
	var notes = [50,53,56,58,80];
	rrand(13, 34).do { |i|
		(	'instrument': 'grain', //this chooses sound
			\freq: notes.at(i%notes.size).midicps,
			'freq2': 1200,
			'sustain': 0.1,
			'amp': 0.5,
			'pan': 0,
			'where': names.at(i%3)		).play;

		1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:30:27.76 - (jonas)
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

		1.wait;
	};
	3.wait;
	}
}).play;
);

// - 1:31:15.46 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'out', 0,
		'freq', Pseq([50,53,58,60],inf),
		'sustain', 0.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 1:31:17.98 - (jonas)
Tdef('glisses').stop;

// - 1:31:24.54 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'out', 0,
		'freq', Pseq([50,53,58,60],inf),
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 1:31:37.46 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([50,53,58,60],inf).midicps,
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 1:31:47.88 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq(24+[50,53,58,60],inf).midicps,
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 1:32:24.41 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq(24+[50,53,58,60],inf).midicps,
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:33:4.6 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:33:13.69 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(12+[50,53,58,60],2)],
			inf).midicps,
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:33:44.8 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 0.5, 'where': rrand(2, 20)	).play;
0.1.wait;
	}



}).play;
);

// - 1:34:2.01 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(12+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pwhite(0.1,0.3,inf),
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:34:15.55 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 0.5, 'where': r.nameList.choose	).play;
0.1.wait;
	}



}).play;
);

// - 1:34:27.52 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 0.5, 'where': r.nameList.choose	).play;
1.1.wait;
	}



}).play;
);

// - 1:34:40.55 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pseq(24+[50,53,58,60],2),
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60].reverse,2),
			Pseq(12+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pwhite(0.1,0.3,inf),
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:35:52.14 - (jonas)
//!! [1,2]@(i%2).wait;

// - 1:35:57.44 - (federella)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', 0.1,
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', 0
	)
).play;
);

// - 1:36:20.96 - (jonas)
//!! ([1,2]@(i%2)).wait;

// - 1:36:27.3 - (federella)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', 0.1,
		'amp', 1.5,
		'pan', 0,
		\dur, 0.33,
		'where', 0
	)
).play;
);

// - 1:36:38.56 - (federella)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', 0.1,
		'amp', 1.0,
		'pan', 0,
		\dur, 0.33,
		'where', 0
	)
).play;
);

// - 1:36:49.9 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pseq(24+[50,53,58,60],2),
			Pshuf(24+[50,53,58,60],2),
			Pseq(36+[50,53,58,60].reverse,2),
			Pseq(12+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pwhite(0.1,0.3,inf),
		'amp', 0.5,
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:37:15.03 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 0.5, 'where': r.nameList.choose	).play;
([1,2]@(i%2)).wait;
	}



}).play;
);

// - 1:38:0.58 - (jonas)
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

		([1,2]@(i%2)).wait;
	};
	3.wait;
	}
}).play;
);

// - 1:38:15.33 - (federella)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pseq ([0.1, 1, 0.5, 2]),
		'amp', 1.0,
		'pan', 0,
		\dur, 0.33,
		'where', 0
	)
).play;
);

// - 1:38:19.67 - (jonas)
Tdef('glisses').stop;

// - 1:38:19.68 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 0.5, 'where': 0	).play;
([1,2]@(i%2)).wait;
	}



}).play;
);

// - 1:38:29.47 - (federella)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pseq ([0.1, 1, 0.5, 2]),
		'amp', 0.5,
		'pan', 0,
		\dur, 0.33,
		'where', 0
	)
).play;
);

// - 1:38:30.53 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': 0	).play;
([1,2]@(i%2)).wait;
	}



}).play;
);

// - 1:38:39.36 - (federella)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(24+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pseq ([0.1, 1, 0.5, 2]),
		'amp', 0.5,
		'pan', 0,
		\dur, 0.33,
		'where', 2
	)
).play;
);

// - 1:38:41.63 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pseq(24+[50,53,58,60],2),
			Pshuf(24+[50,53,58,60],2),
			Pseq(36+[50,53,58,60].reverse,2),
			Pseq(12+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pwhite(0.1,0.3,inf),
		'amp', Pexprand(0.1,0.5),
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:38:58.62 - (jonas)
//!! ([0.1,0.2]@(i%2)).wait;

// - 1:39:6.36 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': 0	).play;
([0.1,0.2]@(i%2)).wait;
	}



}).play;
);

// - 1:39:22.28 - (jonas)
//!! hello federella

// - 1:39:33.9 - (jonas)
//!! silence!

// - 1:40:35.59 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': 0	).play;
([0.1,0.1,0.1,0.1,0.2]@(i%2)).wait;
	}



}).play;
);

// - 1:40:52.29 - (jonas)
//!! ([0.1,0.2].wchoose([0.8,0.2]).wait;

// - 1:41:14.98 - (federella)
(
Pdef(\zajsp,
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

// - 1:41:21.57 - (federella)
Pdef('zajsp').stop;

// - 1:42:20.07 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': 0	).play;
([0.1,0.2].wchoose([0.8,0.2])).wait;
	}



}).play;
);

// - 1:42:32.52 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(36+[40,43,48,50],2)],
			inf).midicps,
		'dcy', 0.01,
		'amp', 0.5,
		'where', r.nameList.choose
	)
).play;
);

// - 1:42:43.83 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(36+[40,43,48,50],2)],
			inf).midicps,
		'dcy', 0.01,
		'amp', 0.5,
		'where', 2
	)
).play;
);

// - 1:42:56.32 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([
			Pshuf(24+[50,53,58,60],2),
			Pseq(36+[40,43,48,50],2)],
			inf).midicps,
		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:43:9.48 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': 0	).play;
([0.1,0.3].wchoose([0.9,0.1])).wait;
	}



}).play;
);

// - 1:43:19.07 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pseq(21+[50,53,58,60],2),
			Pshuf(20+[50,53,58,60],2),
			Pseq(34+[50,53,58,60].reverse,2),
			Pseq(10+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pwhite(0.1,0.3,inf),
		'amp', Pexprand(0.1,0.5),
		'pan', 0,
		\dur, 0.25,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:44:13.23 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': 0	).play;
([0.1,0.4].wchoose([0.8,0.2])).wait;
	}



}).play;
);

// - 1:44:13.62 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,4300,480,5000]),

		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:44:23.53 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,4300,480,5000]),

		'dcy', 0.01,
		'amp', 0.5,
		'where', 2
	)
).play;
);

// - 1:44:29.44 - (jonas)
(
Pdef(\grainmelody,
	Pbind(
		'instrument', 'grainSine',
		'freq', Pseq([
			Pseq(21+[50,53,58,60],2),
			Pshuf(20+[50,53,58,60],2),
			Pseq(34+[50,53,58,60].reverse,2),
			Pseq(10+[50,53,58,60],2)],
			inf).midicps,
		'sustain', Pwhite(0.1,0.3,inf),
		'amp', Pexprand(0.1,0.5),
		'pan', 0,
		\dur, 0.51,
		'where', Pstutter(4, Pseq([0,1,2],inf))
	)
).play;
);

// - 1:44:33.19 - (jonas)
Pdef('grainmelody').stop;

// - 1:44:40.38 - (jas)
(
Tdef(\grain_interpretJas, {

	100.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': r.nameList.choose	).play;
([0.1,0.4].wchoose([0.8,0.2])).wait;
	}



}).play;
);

// - 1:44:46.12 - (jonas)
	( 'instrument': 'ur2', 'amp': 0.2, 'pan': 0, 'sustain': 0.3, 'fundA': 110, 'fundZ': 160, 'f1a': 600, 'f1z': 900, 'f2a': 2500, 'f2z': 1500, 'rq': 0.1, 'where': 0	).play;

// - 1:44:47.43 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 2.93,
		'num', 20,
		'freq', Pseq([400,4300,480,5000]),

		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:44:49.53 - (jonas)
	( 'instrument': 'ur2', 'amp': 0.2, 'pan': 0, 'sustain': 0.3, 'fundA': 110, 'fundZ': 160, 'f1a': 600, 'f1z': 900, 'f2a': 2500, 'f2z': 1500, 'rq': 0.1, 'where': 1	).play;

// - 1:44:51.44 - (jonas)
	( 'instrument': 'ur2', 'amp': 0.2, 'pan': 0, 'sustain': 0.3, 'fundA': 110, 'fundZ': 160, 'f1a': 600, 'f1z': 900, 'f2a': 2500, 'f2z': 1500, 'rq': 0.1, 'where': 2	).play;

// - 1:45:0.13 - (jonas)
	( 'instrument': 'ur2', 'amp': 0.3, 'pan': 0, 'sustain': 0.3, 'fundA': 210, 'fundZ': 160, 'f1a': 600, 'f1z': 900, 'f2a': 2500, 'f2z': 1500, 'rq': 0.1, 'where': 2	).play;

// - 1:45:2.15 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,4300,480,5000]),

		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:45:2.41 - (jonas)
	( 'instrument': 'ur2', 'amp': 0.3, 'pan': 0, 'sustain': 0.3, 'fundA': 210, 'fundZ': 160, 'f1a': 600, 'f1z': 900, 'f2a': 2500, 'f2z': 1500, 'rq': 0.1, 'where': 1	).play;

// - 1:45:16.04 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,4300,480,5000], inf),

		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:45:22.36 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', 0.3,
		'fundA', 110,
		'fundZ', 160,
		'f1a', 600,
		'f1z', 900,
		'f2a', 2500,
		'f2z', 1500,
		'rq', 0.1,
		'where', 0
	)
).play;
);

// - 1:45:32.3 - (jas)
(
Tdef(\grain_interpretJas, {

	150.do{
( 'instrument': 'grain_interpret', 'freq': 400.rand + 200, 'sustain': 0.01, 'amp': 1, 'where': r.nameList.choose	).play;
([0.1,0.4].wchoose([0.7,0.3])).wait;
	}



}).play;
);

// - 1:45:36.19 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,4300,480,5000], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:45:50.8 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', 0.3,
		'fundA', 110,
		'fundZ', 160,
		'f1a', 600,
		'f1z', 900,
		'f2a', 2500,
		'f2z', 1500,
		'rq', 0.1,
		'where', 0,
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:45:52.27 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,500], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:46:4.93 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:46:8.28 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', Pexprand(0.1,0.4),
		'fundA', Pwhite(110,200),
		'fundZ', 160,
		'f1a', 600,
		'f1z', 900,
		'f2a', 2500,
		'f2z', 1500,
		'rq', 0.1,
		'where', 0,
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:46:18.43 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 2
	)
).play;
);

// - 1:46:27.27 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', Pexprand(0.1,0.4),
		'fundA', Pwhite(110,200),
		'fundZ', 160,
		'f1a', 600,
		'f1z', 900,
		'f2a', 2500,
		'f2z', 1500,
		'rq', 0.1,
		'where', Pstutter(15, Pwhite(0,3)),
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:46:32.1 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 1:46:46.7 - (federella)
Pdef('zajsp').stop;

// - 1:46:48.46 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', Pexprand(0.1,0.4),
		'fundA', Pwhite(110,200),
		'fundZ', 160,
		'f1a', Pwhite(600, 800),
		'f1z', 900,
		'f2a', 2500,
		'f2z', 1500,
		'rq', 0.1,
		'where', Pstutter(15, Pwhite(0,3)),
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:47:3.36 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', Pexprand(0.1,0.4),
		'fundA', Pwhite(110,200),
		'fundZ', 160,
		'f1a', Pwhite(600, 800),
		'f1z', Pexprand(500,900),
		'f2a', 2500,
		'f2z', 1500,
		'rq', 0.1,
		'where', Pstutter(15, Pwhite(0,3)),
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:47:9.09 - (jas)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:47:13.74 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
		'amp', 0.2,
		'pan', 0,
		'sustain', Pexprand(0.1,0.4),
		'fundA', Pwhite(110,200),
		'fundZ', 160,
		'f1a', Pwhite(600, 800),
		'f1z', Pexprand(500,900),
		'f2a', Pwhite(2500,5000),
		'f2z', 1500,
		'rq', 0.1,
		'where', Pstutter(15, Pwhite(0,3)),
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:47:24.28 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
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
		'where', Pstutter(15, Pwhite(0,3)),
		\dur, Prand((0.1,0.3..2),inf)
	)
).play;
);

// - 1:47:29.66 - (jonas)
(
Pdef(\speaking,
	Pbind(
		'instrument', 'ur2',
		'out', 0,
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

// - 1:47:30.89 - (jas)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
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
);

// - 1:47:48.97 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
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
);

// - 1:48:8.24 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:48:32.59 - (jonas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', 2* Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:48:35.74 - (jonas)
Pdef('speaking').stop;

// - 1:48:46.92 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', 3* Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:48:58.05 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:49:15.31 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:49:15.47 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:49:19.94 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.93,
		'num', 30,
		'freq', 3* Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:49:26.25 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',2
	)
).play;
);

// - 1:49:36.71 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.93,
		'num', 30,
		'freq', 4 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:49:39.24 - (federella)
Pdef('zajsp').stop;

// - 1:49:42.53 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.93,
		'num', 30,
		'freq', 4 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 2
	)
).play;
);

// - 1:49:44.86 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 1:49:47.86 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.93,
		'num', 30,
		'freq', 4 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 1:49:55.64 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.93,
		'num', 30,
		'freq', 5 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 1:49:57.31 - (jonas)
Pdef('zajspJas').stop;

// - 1:50:2.86 - (jonas)
Pdef('gamelanJo').stop;

// - 1:50:28.02 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.94,
		'num', 30,
		'freq', 5 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 1:50:32.8 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.94,
		'num', 30,
		'freq', 3 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 1:50:38.53 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.9,
		'num', 30,
		'freq', 3 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 1:50:48.52 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.9,
		'num', 30,
		'freq', 3 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 1,
		\dur, 2
	)
).play;
);

// - 1:50:52.83 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3),
		'dur', 2
	)
).play;
);

// - 1:50:57.49 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',1
	)
).play;
);

// - 1:51:1.69 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.9,
		'num', 30,
		'freq', 3 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', Pseq([0,2,1],inf),
		\dur, 2
	)
).play;
);

// - 1:51:4.61 - (jas)
Pdef('zajsp').stop;

// - 1:51:11.63 - (jonas)
(
Pdef(\gamelanJo,
	Pbind(
		'instrument', 'delta_demand2',
		'start', 0.05,
		'grow', 1.9,
		'num', 30,
		'freq', 3 * Pseq([400,800,480,600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', Pseq([0,2,1],inf),
		\dur, 2
	)
).play;
);

// - 1:51:16.06 - (jonas)
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
);

// - 1:51:16.83 - (federella)
Pdef('zajsp').stop;

// - 1:51:45.01 - (jonas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',1
	)
).play;
);

// - 1:51:46.77 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 50,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',0
	)
).play;
);

// - 1:51:50.54 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 40,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3),
		'dur', 2
	)
).play;
);

// - 1:51:55.66 - (jonas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', 0.5*Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',1
	)
).play;
);

// - 1:52:3.84 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',0
	)
).play;
);

// - 1:52:6.82 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 40,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0,
		'dur', 2
	)
).play;
);

// - 1:52:12.97 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 2.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',0
	)
).play;
);

// - 1:52:14.64 - (jonas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', 0.5*[800,700],

		'dcy', 1.01,
		'amp', 0.5,
		'where',1
	)
).play;
);

// - 1:52:17.71 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0,
		'dur', 2
	)
).play;
);

// - 1:52:20.51 - (jonas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', 0.5*[800,700],

		'dcy', 1.01,
		'amp', 0.5,
		'where',2
	)
).play;
);

// - 1:52:24.26 - (jonas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 1.05,
		'grow', 2.93,
		'num', 20,
		'freq', 0.5*[800,700],

		'dcy', 1.01,
		'amp', 0.5,
		'where',0
	)
).play;
);

// - 1:52:28.36 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3),
		'dur', 2
	)
).play;
);

// - 1:52:28.68 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 2.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',2
	)
).play;
);

// - 1:52:30.25 - (jonas)
Pdef('gamelanJo').stop;

// - 1:52:39.45 - (jas)
(
Pdef(\zajspJas,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([200,400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3),
		'dur', 2.5
	)
).play;
);

// - 1:52:39.93 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 2.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',0
	)
).play;
);

// - 1:52:49.28 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where',0
	)
).play;
);

// - 1:53:14.16 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.3,
		'where',0
	)
).play;
);

// - 1:53:31.13 - (jonas)
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

// - 1:53:33.2 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 1.01,
		'amp', 0.2,
		'where',0
	)
).play;
);

// - 1:53:40.11 - (jas)
(
Tdef(\hatXLRevJas, {

	100.do{
( 'instrument': 'hatXLRev', 'freq': 8000.rand + 400, 'sustain': 2.01, 'amp': 1.5, 'pan': 0, 'where': rrand(2, 20)	).play;
0.1.wait;
	}



}).play;
);

// - 1:53:43.34 - (jonas)
//!! use instrument \kalimba

// - 1:53:55.37 - (jonas)
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

// - 1:54:2.03 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 100,
		'freq', Pseq([800,1600,960,1200], inf),

		'dcy', 2.01,
		'amp', 0.2,
		'where',0
	)
).play;
);

// - 1:54:24.18 - (jonas)
(
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
);

// - 1:54:48.68 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'sustain', 1,
		'freq', 100,
		'amp', 1,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', 0
	)
).play;
);

// - 1:54:51.34 - (jonas)
Pdef('gamelan2').stop;

// - 1:54:58.79 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'sustain', 1,
		'freq', 400,
		'amp', 1,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', 0
	)
).play;
);

// - 1:55:14.4 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 2.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:55:18.31 - (jas)
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

// - 1:55:24.83 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'sustain', 1,
		'freq', 400,
		'amp', 1,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', \all
	)
).play;
);

// - 1:55:25.31 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 2.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:55:44.63 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:55:51.84 - (jonas)
//!! Synth(\kalimba)

// - 1:56:1.4 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 0.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:56:13.75 - (jonas)
//!! ( 'instrument': 'hatXLRev', 'freq': 8000, 'sustain': 0.01, 'amp': 0.5, 'pan': 0, 'where': 0	).play;

// - 1:56:19.88 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 2,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:56:28.88 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 20,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:56:56.06 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:57:8.97 - (federella)
Pdef('zajsp').stop;

// - 1:57:11.54 - (federella)
Pdef('gamelan2').stop;

// - 1:57:29.44 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:57:34.07 - (federella)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:57:38.69 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', 1,
		'freq', 400,
		'amp', 1,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 1:58:25.82 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Pseq([400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0,
		'dur', 1.5
	)
).play;
);

// - 1:58:40.7 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Pseq([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0,
		'dur', 1.5
	)
).play;
);

// - 1:58:43.83 - (federella)
Pdef('gamelan2').stop;

// - 1:58:45.26 - (federella)
Tdef('wotkq').pause;

// - 1:58:46.41 - (federella)
Pdef('qllhbJas').pause;

// - 1:58:50.83 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0,
		'dur', 1.5
	)
).play;
);

// - 1:59:2.46 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', 1,
		'freq', Prand((50,53..72),inf).midicps,
		'amp', 0.5,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 1:59:4.02 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 1.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0,
		'dur', 2
	)
).play;
);

// - 1:59:12.42 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:59:15.46 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 2.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.5,
		'where', 0,
		'dur', 2
	)
).play;
);

// - 1:59:21.67 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.5,
		'num', 20,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 1:59:23.05 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5,2.5),
		'freq', Prand((50,53..72),inf).midicps,
		'amp', 0.5,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 1:59:25.7 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 2.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.8,
		'where', 0,
		'dur', 2
	)
).play;
);

// - 1:59:35.13 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.5,
		'num', 50,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.2,
		'where', 0
	)
).play;
);

// - 1:59:40.48 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.2,
		'dur', 1,
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 1:59:40.74 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 3.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 0.8,
		'where', 0,
		'dur', 2
	)
).play;
);

// - 1:59:50.43 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 2.5,
		'num', 50,
		'freq', Pseq([400,800,480,600], inf),

		'dcy', 1.01,
		'amp', 0.2,
		'where', 0
	)
).play;
);

// - 2:0:36.35 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.2,
		'dur', Pwrand([0.1,0.2],[0.8,0.2],inf),
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 2:0:42.83 - (federella)
(
Pdef(\nggro,
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

// - 2:0:46.52 - (jonas)
//!!		'dur', Pwrand([0.1,0.2],[0.8,0.2],inf),

// - 2:0:47.2 - (federella)
Pdef('nggro').stop;

// - 2:0:47.97 - (federella)
Pdef('zajsp').stop;

// - 2:1:0.97 - (federella)
(
Pdef(\nggro,
	Pbind(
		'instrument', 'dirac',
		'out', 0,
		'amp', 1,
		'pan', 0,
		'sustain', 5,
		'where', 0
	)
).play;
);

// - 2:1:11.54 - (federella)
(
Pdef(\dbbro,
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

// - 2:1:18.24 - (federella)
Pdef('nggro').stop;

// - 2:1:19.2 - (federella)
Pdef('dbbro').stop;

// - 2:1:21.74 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.2,
		'dur', Pwrand([0.5,0.2],[0.8,0.2],inf),
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 2:1:34.54 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.2,
		'dur', Pwrand([0.25,0.1],[0.8,0.2],inf),
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 2:1:36.96 - (federella)
(
Pdef(\ullin,
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

// - 2:1:42.68 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.5,
		'dur', Pwrand([0.25,0.1],[0.8,0.2],inf),
		'noise', 1,
		'where', \all,
		\dur, 0.5
	)
).play;
);

// - 2:1:51.01 - (federella)
Pdef('ullin').stop;

// - 2:1:59.62 - (federella)
(
Pdef(\ajnbe,
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

// - 2:2:13.4 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 800,
		'freq2', 1200,
		'sustain', 1.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:2:25.39 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.5,
		'dur', Pwrand([0.25,0.1],[0.8,0.2],inf),
		'noise', 1,
		'where', \all
	)
).play;
);

// - 2:2:29.22 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 8000,
		'freq2', 1200,
		'sustain', 1.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:2:31.41 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.5,
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf),
		'noise', 1,
		'where', \all
	)
).play;
);

// - 2:2:37.74 - (federella)
Pdef('auqtc').play;

// - 2:2:38.05 - (jonas)
Pdef('kalimba').stop;

// - 2:2:38.73 - (federella)
Pdef('auqtc').stop;

// - 2:2:38.95 - (federella)
Pdef('ajnbe').stop;

// - 2:3:20.09 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 8000,
		'freq2', 1200,
		'freq3', 4000,
		'sustain', 1.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:3:35.61 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 8000,
		'freq2', 1200,

		'sustain', 15.01,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:3:37.76 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.5,
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf),
		'noise', 1,
		'where', \all
	)
).play;
);

// - 2:4:0.63 - (jonas)
(
Shout(/*	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.5,
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf),
		'noise', 1,
		'where', \all
	)
	*/)
);

// - 2:4:4.67 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 20000,
		'freq2', 1200,

		'sustain', 15.01,
		'amp', 0.2,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:4:5.78 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 3.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 1,
		'where', 0,
		'dur', Pwrand([0.1,0.2],[0.8,0.2],inf)
	)
).play;
);

// - 2:4:22.83 - (jonas)
(
Pdef(\siren,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 10000,
		'freq2', 1200,

		'sustain', 15.01,
		'amp', 0.2,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:4:23.02 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 3.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 1,
		'where', 0,
		'dur', Pwrand([0.1,1],[0.8,0.2],inf)
	)
).play;
);

// - 2:4:32.49 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 1,
		'freq', 20000,
		'freq2', 1200,

		'sustain', 15.01,
		'amp', 0.2,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:4:41.97 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 2,
		'freq', 20000,
		'freq2', 1200,

		'sustain', 15.01,
		'amp', 0.2,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:4:47.4 - (jonas)
(
Pdef(\siren,
	Pbind(
		'instrument', 'glisson',
		'out', 0,
		'freq', 10000,
		'freq2', 200,

		'sustain', 6.01,
		'amp', 0.2,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:4:49.79 - (federella)
(
Pdef(\ajnbe,
	Pbind(
		'instrument', 'glisson',
		'out', 2,
		'freq', 20000,
		'freq2', 1200,

		'sustain', 15.01,
		'amp', 0.1,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:4:51.05 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 3.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 1,
		'where', 0,
		'dur', Pwrand([0.2,0.8],[0.8,0.2],inf)
	)
).play;
);

// - 2:5:0.71 - (federella)
Pdef('ajnbe').stop;

// - 2:5:13.78 - (federella)
(
Pdef(\fpsja,
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

// - 2:5:20.35 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 4.93,
		'num', 200,
		'freq', Prand([200,400,800,480,1600], inf),

		'dcy', 0.5,
		'amp', 1,
		'where', 0,
		'dur', Pwrand([0.15,0.7],[0.8,0.2],inf)
	)
).play;
);

// - 2:5:22.57 - (federella)
Pdef('fpsja').stop;

// - 2:5:29.6 - (jonas)
Pdef('speaking').play;

// - 2:5:30.39 - (jonas)
Pdef('speaking').stop;

// - 2:5:31.05 - (jonas)
Pdef('siren').stop;

// - 2:5:41.23 - (jonas)
(
Pdef(\siren,
	Pbind(
		'instrument', 'glisson',
		'freq', 800,
		'freq2', 12000,

		'sustain', 6.01,
		'amp', 0.2,
		'pan', 0,
		'where', 0,
		\dur, 5
	)
).play;
);

// - 2:5:54.27 - (jonas)
(
Pdef(\siren,
	Pbind(
		'instrument', 'glisson',
		'freq', 800,
		'freq2', 12000,

		'sustain', 6.01,
		'amp', 0.2,
		'pan', 0,
		'where', Pseq([0,1,2],inf),
		\dur, 5
	)
).play;
);

// - 2:5:59.74 - (jas)
(
Pdef(\gamelan2,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 4.93,
		'num', 200,
		'freq', Prand([200,400,800,480,960,1600], inf),

		'dcy', 0.5,
		'amp', 1,
		'where', 0,
		'dur', Pwrand([0.1,0.8],[0.8,0.2],inf)
	)
).play;
);

// - 2:6:10.22 - (jonas)
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
);

// - 2:6:24.39 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', 0.5,
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf),
		'noise', 1,
		'where', Pwhite(0,2)
	)
).play;
);

// - 2:6:33.33 - (jas)
(
Pdef(\gamelan2Jas,
	Pbind(
		'instrument', 'kalimba',
		'out', 0,
		'start', 0.05,
		'grow', 4.93,
		'num', 200,
		'freq', Prand([200,400,800,480,960,1600], inf),

		'dcy', 0.5,
		'amp', 1,
		'where', Prand(r.nameList,3),
		'dur', Pwrand([0.1,0.8],[0.8,0.2],inf)
	)
).play;
);

// - 2:6:53.07 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82)-6,inf).midicps,
		'amp', 0.5,
		'ring', 1,
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf) * 0.5,
		'noise', 1,
		'where', Pwhite(0, 2)
	)
).play;
);

// - 2:7:12.3 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', Pwhite(0.5,2),
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf) * 0.5,
		'noise', 1,
		'where', Pwhite(0, 2)
	)
).play;
);

// - 2:7:14.99 - (jonas)
Pdef('siren').stop;

// - 2:7:26.64 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', 0.5,
		'ring', Pwhite(0.5,2),
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf) * 0.5,
		'noise', Pwhite(1,10),
		'where', Pwhite(0, 2)
	)
).play;
);

// - 2:7:41.43 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', Pexprand(0.1,0.5),
		'ring', Pwhite(0.5,2),
		'dur', Pwrand([0.25, 0.5],[0.8,0.2],inf) * 0.5,
		'noise', Pwhite(1, 10),
		'where', Pwhite(0, 2)
	)
).play;
);

// - 2:7:50 - (federella)
(
Pdef(\wsndw,
	Pbind(
		'instrument', 'grainXLRev',
		'out', 0,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300]),
		'sustain', 0.33,
		'amp', 0.5,
		'pan', 0,
		'where', 0
	)
).play;
);

// - 2:9:4.17 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', Pexprand(0.1,0.5),
		'ring', Pwhite(0.5,2),
		'dur', Pstutter(12, Pwrand([0.25, 0.5],[0.8,0.2],inf)) * 0.5,
		'noise', Pwhite(1, 10),
		'where', Pwhite(0, 2)
	)
).play;
);

// - 2:9:10.76 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82),inf).midicps,
		'amp', Pexprand(0.1,0.5),
		'ring', Pwhite(0.5,2),
		'dur', Pstutter(12, Pwrand([0.25, 0.5],[0.8,0.2],inf)) * 0.5,
		'noise', Pwhite(1, 10),
		'where', 0
	)
).play;
);

// - 2:9:17.71 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 1
	)
).play;
);

// - 2:9:19.95 - (jonas)
(
Pdef(\kalimba,
	Pbind(
		'instrument', 'kalimba',
		'sustain', Pwhite(0.5, 2.5),
		'freq', Prand((60,63..82)-12,inf).midicps,
		'amp', Pexprand(0.1,0.5),
		'ring', Pwhite(0.5,2),
		'dur', Pstutter(12, Pwrand([0.25, 0.5],[0.8,0.2],inf)) * 0.5,
		'noise', Pwhite(1, 10),
		'where', 0
	)
).play;
);

// - 2:9:29.46 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:9:32.62 - (jonas)
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
		'where', 0
	)
).play;
);

// - 2:9:39.35 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
		'grow', 0.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.1,
		'where', 0
	)
).play;
);

// - 2:10:0.07 - (jas)
Pdef('gamelan2').stop;

// - 2:10:38.74 - (federella)
Pdef('zyioc').play;

// - 2:10:39.55 - (federella)
Pdef('zajsp').stop;

// - 2:10:39.93 - (federella)
Pdef('zyioc').stop;

// - 2:10:45.97 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.1,
		'where', 0
	)
).play;
);

// - 2:11:9.63 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:11:35.23 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 1.5,
		'where', 0
	)
).play;
);

// - 2:11:46.61 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:12:1.06 - (jonas)
Pdef('kalimba').stop;

// - 2:12:3.62 - (jonas)
Pdef('kalimba').play;

// - 2:12:3.91 - (jonas)
Pdef('kalimba').stop;

// - 2:12:4.69 - (jonas)
Pdef('kalimba').play;

// - 2:12:5.5 - (jonas)
Pdef('kalimba').stop;

// - 2:12:29 - (jonas)
(
Pdef(\bells,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:12:31.06 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',0.93,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:12:43.45 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.2,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:12:54.42 - (jonas)
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
);

// - 2:12:57.11 - (jonas)
Pdef('bells').stop;

// - 2:13:4.11 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.5,
	 	'grow',1.2,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.2,
		'where', 0
	)
).play;
);

// - 2:13:13.16 - (jas)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.2,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:13:50.56 - (jonas)
(
s = r.myServer;
Ndef.defaultServer = s;

// make a mixer for us
//
n = NdefMixer.new(s,8).moveTo(0,420);

q.resp = ();

// prepare listening to ndef-related messages:
(
q.resp[\setndef] = OSCresponder(nil, '/setndef', { |t, resp, msg|
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
);


( 	// watchout can sometimes get loud
	Ndef(\traffic, { |x = 0.5, y = 0, z = 0, amp=0.1|
	SinOsc.ar([240, 439] + (x * 1000) * 2, 0, 0.8)
	*
	LFPulse.kr(y.linexp(0, 1, 0.1, 1000), 0, z.linlin(0,1,0.1, 0.9), amp)
	})
);

(
Ndef(\rausch, { |x=0.5, y=0.5, z=0.5, amp=0.1|
	var son,lfo;
	son = WhiteNoise.ar(1) + SinOsc.ar(x,0,z*100).softclip;
	lfo = SinOsc.kr(y.linlin(0,1,0.001,10)).range(1,5);
	LPF.ar(son, x.linexp(0,1,30,1000) * lfo, amp)
});
);
);

// - 2:13:51.56 - (jas)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.2,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', Prand(r.nameList,3)
	)
).play;
);

// - 2:14:5.04 - (federella)
Pdef('zajsp').stop;

// - 2:14:36.71 - (federella)
Pdef('grainmelody').pause;

// - 2:15:4.31 - (jas)
Pdef('zajspJas').play;

// - 2:15:6.19 - (jas)
Pdef('zajspJas').stop;

// - 2:16:0.92 - (federella)
(
Pdef(\zajsp,
	Pbind(
		'instrument', 'delta_demand2',
		'out', 0,
		'start', 0.05,
	 	'grow',1.2,
		'num', 20,
		'freq', Pseq([800, 1000, 900, 1100, 1000, 1200, 1100, 1300], inf),


		'dcy', 1.01,
		'amp', 0.5,
		'where', 0
	)
).play;
);

// - 2:16:8.1 - (federella)
Pdef('zajsp').stop;

// - 2:16:39.09 - (jas)
(
s = r.myServer;
Ndef.defaultServer = s;

// make a mixer for us
//
n = NdefMixer.new(s,8).moveTo(0,420);

q.resp = ();

// prepare listening to ndef-related messages:
(
q.resp[\setndef] = OSCresponder(nil, '/setndef', { |t, resp, msg|
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
);


( 	// watchout can sometimes get loud
	Ndef(\traffic, { |x = 0.5, y = 0, z = 0, amp=0.1|
	SinOsc.ar([240, 439] + (x * 1000) * 2, 0, 0.8)
	*
	LFPulse.kr(y.linexp(0, 1, 0.1, 1000), 0, z.linlin(0,1,0.1, 0.9), amp)
	})
);

(
Ndef(\rausch, { |x=0.5, y=0.5, z=0.5, amp=0.1|
	var son,lfo;
	son = WhiteNoise.ar(1) + SinOsc.ar(x,0,z*100).softclip;
	lfo = SinOsc.kr(y.linlin(0,1,0.001,10)).range(1,5);
	LPF.ar(son, x.linexp(0,1,30,1000) * lfo, amp)
});
);
);

// - 2:18:2.01 - (jonas)
r.send(\all, '/setndef', \rausch, \play);

// - 2:18:7.58 - (jonas)
r.send(\all, '/setndef', \rausch, \end);

// - 2:18:22.32 - (jonas)
r.send(\all, '/setndef', \traffic, \play);

// - 2:19:16.01 - (jonas)
r.send(\all, '/setndef', \traffic, \end);

// - 2:23:16.21 - (jonas)
//!!r.send(\all, '/setndef', \rausch, \play);

// - 2:23:24.95 - (jonas)
r.send(\all, '/setndef', \rausch, \play);

// - 2:23:44.67 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.2);

// - 2:24:7.24 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.2);

// - 2:24:22.32 - (jonas)
r.send(\jonas, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.2);

// - 2:24:26.35 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.2);

// - 2:24:38.39 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.2);

// - 2:25:8.96 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.01);

// - 2:26:45.32 - (jonas)
(
Tdef(\panner, {
	var names=r.nameList;
	var vols=(0,0.1..1)/20;
	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.05, \z, 1, \amp, 0.1);
	inf.do{|i|
	// send to one participant
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:27:3.45 - (jonas)
(
Tdef(\panner, {
	var names=r.nameList;
	var vols=(0,0.1..1)/40;
	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.05, \z, 1, \amp, 0.1);
	inf.do{|i|
	// send to one participant
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:27:27.51 - (federella)
(
Tdef(\panner, {
	var names=r.nameList;
	var vols=(0,0.1..1)/20;
	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.05, \z, 1, \amp, 0.1);
	inf.do{|i|
	// send to one participant
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:27:47.17 - (jonas)
(
Tdef(\panner, {
	var names=r.nameList;
	var vols=(0,0.1..1)/40;
	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.05, \z, 1, \amp, 0.1);

	inf.do{|i|
	// send to one participant
	var target = names@(i%r.nameList.size).postln;
	vols.size.do{
		r.send(target, '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:27:49.15 - (federella)
(
Tdef(\panner, {
	var names=r.nameList;
	var vols=(0,0.1..1)/20;
	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.05, \z, 1, \amp, 0.1);
	inf.do{|i|
	// send to one participant
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:28:7.55 - (jonas)
Tdef('panner').stop;

// - 2:28:58.17 - (federella)
Tdef('panner').stop;

// - 2:29:4.54 - (jonas)
(
Tdef(\panner, {

	var names=r.nameList;
	var vols=(0,0.1..1)/40;

	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.05, \z, 1, \amp, 0.1);

	inf.do{|i|
	// send to one participant
	var target = names@(i%r.nameList.size).postln;
	vols.size.do{
		r.send(target, '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(target, '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:29:7.07 - (federella)
(
Pdef(\iccns,
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

// - 2:29:33.13 - (jonas)
Tdef('panner').stop;

// - 2:29:38.69 - (jonas)
r.send(\all, '/setndef', \rausch, \end);

// - 2:29:47 - (federella)
Pdef('iccns').stop;

// - 2:32:39.78 - (jonas)
r.send(\all, '/setndef', \rausch, \play);

// - 2:33:22.11 - (jonas)
r.send(\all, '/setndef', \rausch, \end);

// - 2:33:42.03 - (jonas)
r.send(\all, '/setndef', \rausch, \play);

// - 2:33:44.08 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:46.26 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:47.75 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:49.17 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:50.14 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:51.15 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:53.43 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:33:57.14 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:34:26.92 - (jonas)
(
Ndef(\rausch, { |x=0.5, y=0.5, z=0.5, amp=0.1|
	var son,lfo;
	son = WhiteNoise.ar(1) + SinOsc.ar(x,0,z*100).softclip;
	lfo = SinOsc.kr(y.linlin(0,1,0.001,10)).range(1,5);
	LPF.ar(son, x.linexp(0,1,30,1000) * lfo, amp)
});
);

// - 2:34:40.24 - (federella)
(
Tdef(\panner, {
	var names=r.nameList;
	var vols=(0,0.1..1)/20;
	r.send(\all, '/setndef', \rausch, \play);
	r.send(\all, '/setndef', \rausch, \x, 2, \y, 1, \z, 3, \amp, 0.1);
	inf.do{|i|
	// send to one participant
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols@(i%10));
		0.3.wait;
	};
	vols.size.do{
		r.send(names@(i%r.nameList.size), '/setndef', \rausch, \amp, vols.reverse@(i%10));
		0.5.wait;
	}
	};
}).play
);

// - 2:34:47.84 - (federella)
Tdef('panner').stop;

// - 2:38:36.04 - (jas)
r.send(\all, '/setndef', \rausch, \play); //to make it play on all computers

// - 2:38:47.84 - (jas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.1.rand);

// - 2:38:48.22 - (jonas)
(
Ndef(\rausch, { |x=0.5, y=0.5, z=0.5, amp=0.1|
	var son,lfo;
	son = WhiteNoise.ar(1) + SinOsc.ar(x,0,z*100).softclip;
	lfo = SinOsc.kr(y.linlin(0,1,0.001,10)).range(1,5);
	LPF.ar(son, x.linexp(0,1,30,1000) * lfo, amp)
});
);

// - 2:38:53.99 - (jas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.1.rand);

// - 2:38:56.6 - (jas)
r.send(\all, '/setndef', \rausch, \play); //to make it play on all computers

// - 2:39:2.16 - (jas)
r.send(\all, '/setndef', \rausch, \play); //to make it play on all computers

// - 2:39:3.51 - (jonas)
(
q.resp[\setndef] = OSCresponder(nil, '/setndef', { |t, resp, msg|
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
);

// - 2:39:8.1 - (jas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:39:11.02 - (jas)
r.send(\all, '/setndef', \rausch, \play); //to make it play on all computers

// - 2:39:25.19 - (jas)
r.send(\all, '/setndef', \rausch, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5);

// - 2:39:38.97 - (jonas)
r.send(\all, '/setndef', \traffic, \play);

// - 2:39:47.55 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.2);

// - 2:39:50.43 - (jas)
r.send(\all, '/setndef', \rausch, \x, 1, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5);

// - 2:39:52.61 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.001, \z, 0.1, \amp, 0.6);

// - 2:39:56.82 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.01, \z, 0.1, \amp, 0.6);

// - 2:39:59.37 - (jas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5);

// - 2:40:7.87 - (jonas)
r.send(\all, '/setndef', \rausch, \x, 0.5, \y, 0.01, \z, 0.3, \amp, 0.6);

// - 2:44:1.23 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

// - 2:44:4.78 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:44:14.01 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.1.rand);

// - 2:44:17.67 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:44:21.23 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:44:30.55 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:44:31.69 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:44:34.63 - (jonas)
r.send(\all, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.2.rand);

// - 2:44:42.82 - (jonas)
r.send(\all, '/setndef', \rausch, \end);

// - 2:44:43.59 - (jonas)
r.send(\all, '/setndef', \traffic, \end);

