// PERCUSSIVE Ndefs

(
Ndef(\soundbeam4,
	{arg t_trig=1, sustain = 0.1, ring = 0.25, noise = 40, crisp = 1000, freq = 405, amp = 0.3, pan=0;

	var drum_mode_sin_1, drum_mode_sin_2, drum_mode_pmosc, drum_mode_mix, drum_mode_env;
	var snare_noise, snare_brf_1, snare_brf_2, snare_brf_3, snare_brf_4, snare_reson;
	var snare_env;
	var snare_drum_mix;

	drum_mode_env = EnvGen.ar(Env.perc(0.005, sustain), t_trig);
	drum_mode_sin_1 = SinOsc.ar(freq*0.53, 0, drum_mode_env * 0.5);
	drum_mode_sin_2 = SinOsc.ar(freq, 0, drum_mode_env * 0.5);
	drum_mode_pmosc = PMOsc.ar(	Saw.ar(freq*0.85), 184, 0.5/1.3, mul: drum_mode_env*5, add: 0);
	drum_mode_mix = Mix.new([drum_mode_sin_1, drum_mode_sin_2, drum_mode_pmosc]) * ring;
// choose either noise source
//	snare_noise = Crackle.ar(2.01, 1);
	snare_noise = LFNoise0.ar(20000, 0.1);
	snare_env = EnvGen.ar(Env.perc(0.005, sustain), t_trig );
	snare_brf_1 = BRF.ar(in: snare_noise, freq: 8000, mul: 0.5, rq: 0.1);
	snare_brf_2 = BRF.ar(in: snare_brf_1, freq: 5000, mul: 0.5, rq: 0.1);
	snare_brf_3 = BRF.ar(in: snare_brf_2, freq: 3600, mul: 0.5, rq: 0.1);
	snare_brf_4 = BRF.ar(in: snare_brf_3, freq: 2000, mul: snare_env, rq: 0.0001);
	snare_reson = Resonz.ar(snare_brf_4, crisp, mul: noise);

	snare_drum_mix = Mix([drum_mode_mix, snare_reson]) * amp;
	Pan2.ar(snare_drum_mix.tanh, pan)
	}
).play
);


// example timbres
Ndef(\soundbeam4).set(\t_trig, 1, \amp, 0.1, \noise, 1, \ring, 1, \sustain, 3, \crisp, 3000);
Ndef(\soundbeam4).set(\t_trig, 1,\amp, 0.2, \noise, 100, \ring, 1, \sustain, 0.1, \crisp, 10000);
Ndef(\soundbeam4).set(\t_trig, 1,\amp, 0.3, \noise, 1000, \ring, 5, \sustain, 0.3, \crisp, 100);
Ndef(\soundbeam4).set(\t_trig, 1,\amp, 0.7, \noise, 100, \ring, 0, \sustain, 1.3, \crisp, 10000);



(
Ndef(\soundbeam5, { arg t_trig=1, sustain = 0.4, ring = 0.25,freq = 190, timbre = 1.0, amp = 0.1,pan=0;

	var drum_mode_sin_1, drum_mode_sin_2, drum_mode_pmosc, drum_mode_mix, drum_mode_env;
	var stick_noise, stick_env;
	var drum_reson, tom_mix;

	drum_mode_env = EnvGen.ar(Env.perc(0.1, sustain), t_trig);
	drum_mode_sin_1 = SinOsc.ar(freq*0.8, 0, drum_mode_env * 0.5);
	drum_mode_sin_2 = SinOsc.ar(freq, 0, drum_mode_env * 0.5);
	drum_mode_pmosc = PMOsc.ar(	Saw.ar(freq*0.9),
								freq*0.85,
								timbre/1.3,
								mul: drum_mode_env*5,
								add: 0);

	drum_mode_mix = Mix.new([drum_mode_sin_1, drum_mode_sin_2, drum_mode_pmosc]) * ring;
	stick_noise = Crackle.ar(2.01, 1);
	stick_env = EnvGen.ar(Env.perc(0.005, 0.01), t_trig) * 3;
	tom_mix = Mix.new([drum_mode_mix, stick_env]) * amp;
	Pan2.ar(tom_mix, pan).softclip
	}
).play
);

// Examples
Ndef(\soundbeam5).set(\t_trig, 1, \amp, 0.4);
Ndef(\soundbeam5).set(\t_trig, 1, \amp, 0.6, \freq, 400, \ring, 0.13, \timbre, 5, \sustain, 3); // metal rods?
Ndef(\soundbeam5).set(\t_trig, 1, \amp, 0.3, \freq, 300, \ring, 1, \timbre, 1.0, \sustain, 0.8); // metal rods?
Ndef(\soundbeam5).set(\t_trig, 1, \amp, 0.4, \freq, 200, \ring, 0.1, \timbre, 5.0, \sustain, 0.6); // metal rods?
Ndef(\soundbeam5).set(\t_trig, 1, \amp, 0.4, \freq, 330, \ring, 0.1, \timbre, 2.2, \sustain, 0.2); // metal rods?


// a fancy kick
(
Ndef(\kickDub, { arg t_trig=1, noise=3, amp=0.3, freq=80, rq=0.4, sustain=3, pan=0;
	// interesting value ranges for nice crunchy bass drum sound!
	// rq is interesting above 0.3
	var rand = LFNoise1.kr(1/sustain,0.2,1.0);
	var distort=1+noise;
	var src=LFTri.ar(1/(4*sustain),2);
//	var src=LFPulse.ar(rate); // alternative source makes less freq bounce
	var env = EnvGen.kr(Env.perc(0.001,sustain), t_trig);
	15.do{
			src=BAllPass.ar(src,freq,rq/sustain, 1);
			// tanh limits and smoothes the curve to audiorange, don't take away!
			src=(src * distort).tanh;
			src=LeakDC.ar(src,0.995) * 0.95
		};
	Pan2.ar(env*src*amp,pan)
	}).play;
);

/*
Ndef(\kickDub).set(\t_trig, 1, 'noise', 1.5, 'amp', 0.7, 'freq', 50, 'rq', 1, 'sustain', 3)
Ndef(\kickDub).set(\t_trig, 1, 'noise', 1.5, 'amp', 0.7, 'freq', 60, 'rq', 1, 'sustain', 1)
*/