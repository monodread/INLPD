// List of Sounds to try out for Sunday, INLPD Session
// 29.5.14


(
// adapted from JRH piece
SynthDef("deepsea", { arg out, pan=0, amp=0.1, variation=0.9;
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
)
/*
Synth(\deepsea)
*/


(
// by Eli Fieldsteel
SynthDef(\crackle, { arg inChan=0, lpfreq=1000, hpfreq=2000,  sustain=2, amp=0.1;
	var	sig, sig1, sig2, lpf, popHz, lagtime, noise, popHzMul,
		pan1, pan2, panmod1, panmod2, env, ampIn;
	ampIn = Amplitude.kr(SoundIn.ar(inChan), 0.01, 0.1).range(0,1);
	env = EnvGen.kr(Env.linen(sustainTime:sustain, level:1+ampIn), doneAction:2);
	popHzMul = Decay.kr(Dust.kr(0.15), 3, 10, 0.8);
	popHz = 	LFNoise1.kr(20).exprange(0.1,10) * popHzMul;
	sig = Dust2.ar(popHz);
	lpf = LFNoise1.kr(10).exprange(lpfreq,20000);
	lagtime = LFNoise1.kr(20).range(0.008,0.0001);
	sig = LPF.ar(sig, lpf);
	sig = Lag.ar(sig, lagtime);
	sig = sig + FreeVerb.ar(sig, 0.8, 1, mul:0.11);
	panmod1 = LFNoise1.kr(5).range(0.2,0.7);
	panmod2 = LFNoise1.kr(5).range(0.2,0.7);
	pan1 = SinOsc.kr(panmod1).range(-0.2,0.2);
	pan2 = SinOsc.kr(panmod2).range(-0.2,0.2);
	sig1 = Pan2.ar(sig, pan1, 0.5);
	sig2 = Pan2.ar(sig, pan2, 0.5);
	sig = sig1 + sig2;
	sig = sig + BPF.ar(BrownNoise.ar([0.0025,0.0025]), 7200, 0.4);
	sig = sig + HPF.ar(Crackle.ar([1.999,1.999], 0.0025),hpfreq);
	Out.ar(0, Limiter.ar(sig*12) *env*amp);
}).add;
);
/*
Synth(\crackle, [\hpfreq, 1000, \amp, 5]);
*/


(
SynthDef(\bubbleAna, { |out, freq=400, sustain=2, rise=2, amp=0.5|
	var son, env, gliss, root;
	root = freq.cpsmidi;
	gliss = LFSaw.kr(sustain.reciprocal, 0, rise*12, LFSaw.kr([8, 7.23],0, rise, root) ).midicps; // glissando function
	son = SinOsc.ar(gliss, mul:amp); // using sine wave
	son = CombN.ar(son, 0.2, 0.2, 1); // add an echo
	env = EnvGen.kr(Env.linen, timeScale:sustain, doneAction:2);
	Out.ar(out, son * env * amp);
}).add;

)
/*
Synth(\bubbleAna, [\freq, 100, \sustain, 1, \rise, 3])
*/

////////////////////////////////////
(
// Dark Ambience
SynthDef(\darkAmb, { |out, freq=55, sustain=10, amp=0.2|
	var son, env, fade, root;
	root = 60;
	fade = Line.kr(0,1,9);
	son = ar(PinkNoise, 5e-3);
	son = HPF.ar(son, 10)*fade;
	son = ({|i| ar(Ringz, son*LFNoise1.kr(0.05+0.1.rand),freq*i+root,amp)}!99).sum;
	env = EnvGen.kr(Env.linen(0.01, sustain), doneAction:2);
	Out.ar(out, ar(GVerb, son, 70,99).tanh)
}).add;
)

/*
Synth(\darkAmb)
*/

///////////////////////////////////////////
// NDEFS

NdefMixer.new(s);

Ndef(\darkAmb).play;
(
Ndef(\darkAmb, {|noise=1, dur=9, root=36, freq=55, fbQ=1, room=70, revtime=99, amp=0.1|
	var src, snd;
	src = PinkNoise;
	src = HPF.ar(src.ar(0.005*noise),10) * Line.kr(0,1,dur);
	snd = ({|i| Ringz.ar(src*LFNoise1.kr(0.05+0.1.rand)*fbQ,freq*i+root.midicps,0.2)}!99);
	snd = GVerb.ar(snd.sum,room,revtime).tanh;
	snd = Limiter.ar(snd)* 5 *amp;
	SplayAz.ar(2, snd, width:2, center: LFNoise1.kr(0.01).range(0,2), orientation:0);
});

/*Spec.add(\noise, [0.1, 10, \lin]);
Spec.add(\dur, [0.1, 10.0, \lin]);
Spec.add(\freq, [20,20000,\exp]);
Spec.add(\root, [20, 10000, \exp]);
Spec.add(\fbQ, [0.001, 2.0, \lin]);
Spec.add(\room, [0.1, 300.0, \lin]);
Spec.add(\revtime, [0.1, 200.0, \lin]);
Spec.add(\amp, [0.01, 1.0, \lin]);*/
);


Ndef(\seahorns).play;
(
Ndef(\seahorns, { |amp=0.4, root=36, decay=5, noisevol=6|
	var src, son, rand, fb;
	fb = Ndef(\seahorns);
	rand= LFNoise2;
	src = SinOsc;
	son = src.ar(root.midicps*[1, 4/3], fb.ar*rand.ar(0.1,3), rand.ar(3,noisevol)).tanh;
	9.do{son=AllpassC.ar(son, 0.3, {0.2.rand+0.1}!2, decay)};

	son = Limiter.ar(son.tanh * amp);
	SplayAz.ar(2, son, rand.kr(rand.kr(1).range(0,1)));
});

/*Spec.add(\root, [20,10000,\exp]);
Spec.add(\decay, [0.1, 20.0, \exp]);
Spec.add(\noisevol, [0.1, 30.0, \exp]);*/
);



Ndef(\seacanons).play;
(
Ndef(\seacanons, { |amp=0.5, freq=130, pulseFreq=0.5, delay=0.2, fbQ=2|
		var son, delayTime, delayAdd = 0.1, numOfEchos=3, mainPulse, proxy, ampModFreq, ampMod;
		mainPulse = LFPulse.ar(LFNoise0.kr(pulseFreq).abs, 0, 0.1).range(freq/3, freq);
		fbQ = Ndef(\seacanons).ar * fbQ;
		ampModFreq = SinOsc.ar(0.01, 0).range(0.3, 30);
		ampMod = LFNoise1.ar(ampModFreq, 6);
		son = HPF.ar(SinOsc.ar(mainPulse + fbQ, 0, ampMod).tanh, 10);
		numOfEchos.do{
			delayTime = {delay + delayAdd}!2;
			son = AllpassL.ar(son, 0.1, delayTime, 5);
		};
	SplayAz.ar(2, son.softclip, 1, amp);
	};
);
)


(
// sccode by sadguitarius, rewritten and modded
Ndef(\ocean, { |amp=1|
	var src, freqs;
	freqs = 1/[ 8, 10, 12, 14 ];
	src = WhiteNoise.ar(0.1)+Dust.ar(100, 0.5) * Line.kr(0,1,5);
	src = OnePole.ar(src, 0.7, LFTri.ar(LFNoise1.kr(0.5).exprange(0.01,1)).exprange(0.5,1));
	src = src + Splay.ar(FreqShift.ar(src, freqs));
	src * amp
}).play
)



///////////////////////////////////

Ndef(\monitor).play;

(
Ndef(\monitor, { |amp=1|
	// read 4 input channels from 3 upwards
	// needs inFeedback or not?
	SelectX.ar(MouseX.kr(0,3).round(1), [InFeedback.ar(3), InFeedback.ar(4), InFeedback.ar(5), InFeedback.ar(6)]) * amp
})
)

Ndef(\monitor)[1] = \filter -> {|in, freq| LPF.ar(in, freq)}

//////////////////////////////
// TO DO  still

/*
// blowing ambient with lots reverb
// by rukano
fork{
	// notes sequence
	var seq = Pxrand([0,3,5,7,8],inf).asStream;
	loop{
		var dur = 8;
		var num = 8;
		var root = 36;
		var freq = (seq.next+root).midicps;
		var spread = rrand(0.4,0.8);
		var attack = rrand(0.05, 0.3);

		// play the cluster
		play{
			var harm = Array.geom(num, 1, 1.5);
			var harma = Array.geom(num, 0.5, 0.8);
			var detune = Array.fill(num, { LFNoise2.kr(1,0.01,1) });
			var source = PinkNoise.ar;
			var bandwidth = Rand(0.001,0.01);
			var generator = [
				SinOsc.ar(freq*harm*detune, mul:harma*0.3).scramble,
				Resonz.ar(source, freq*harm*detune, bandwidth, mul:harma).scramble * 50
			].wchoose([0.2,0.8]);
			var snd = Splay.ar(generator,spread);
			snd * LFGauss.ar(dur, attack, loop:0, doneAction:2);
		};
		dur.wait;
	};

};

(
// global triple super gverb
{
	var in = In.ar(0,2);
	in = (in*0.2) + GVerb.ar(in, 220, 12, mul:0.6);
//	in = (in*0.2) + GVerb.ar(in, 220, 12, mul:0.6);
//	in = (in*0.2) + GVerb.ar(in, 220, 12, mul:0.6);
	ReplaceOut.ar(0, Limiter.ar(LeakDC.ar(in)))
}.play(addAction:\addToTail)
)




// by xffff
// this is what I write when I didn't sleep last night.. zzzzzz
// easy subsynth with dynklank and simple scale

(

fork{
	loop{
		var time;
		time = 5.rand;
		{
			var sound, freqs, envs, rings, numvoices, env;
			numvoices = 40;
			freqs = {(Scale.major(\just).degrees+26+
				(0,12..110).choose).choose}.dup(numvoices).midicps;
			rings = {1.0.rand}.dup(numvoices);
			envs = { EnvGen.kr(Env.linen( time/3.0.rand,
				time/3.0.rand, time/3.0.rand, 1.0.rand ) ) }.dup(numvoices);

			sound = PinkNoise.ar(numvoices.reciprocal!2);
			sound = DynKlank.ar(`[freqs,envs,rings], sound );
			sound = sound * EnvGen.kr(Env.linen(time.rand,time/3,time.rand),doneAction:2);

			sound = HPF.ar(sound, 120);

			4.do{sound = DelayC.ar(sound, 0.4, [0.4.rand,0.4.rand], 1/8, sound) };

			//good call - lets turn this down
			sound*0.1;
		}.play;
	time.rand.wait;
	}
}
)

*/