// Some Rewritten Tweets for INPLD
s.meter;
s.freqscope;
NdefMixer.new(s);

Ndef(\tweet).play;

(
// reminds of motor, shifting gears
Ndef(\tweet, { |amp=0.1|
	var src;
	src = SinOsc.ar(LFSaw.kr(1/60).exprange(0.01, 200)).exprange(100,1000);
	LeakDC.ar((Klank.ar(`[(33,44..77).midicps,nil,0.1], src).dup/9).softclip) * amp
})
)


// loads the cpu!
(
Ndef(\tweet, {
	var src;
	src = ({|k| ({|i| src=SinOsc.ar(i, SinOsc.ar(i+k**i)/Decay.kr(Impulse.kr(0.5**i/k),[1,2]+i,k))}).dup(6).sum}).dup(16).sum;
	HPF.ar(GVerb.ar(src,1,1)/180,40)
}).play
)

(
Ndef(\tweet, {
	var src = ({|k| ({|i|SinOsc.ar(i/96,Saw.ar(2**(i+k))/Decay.ar(Impulse.ar(0.5**i/k),[k*i+1,k*i+1*2],3**k))}!6).product}.dup(32)).sum * 0.5;
	HPF.ar(src,40)
}).play
)

(
// plays between 100 and 200 Hz
Ndef(\tweet, { |pan=0, amp=0.1, rate=1, freq=100|
	var src, notes, muls, trig;
//	rate = rrand(2,33);
	trig = Impulse.kr(rate);
	notes = Demand.kr(trig, 0, Dseq([0.3.rand,0.3.rand] + rrand(freq,freq*2),inf));
	muls = SinOsc.ar(rrand(6,33));
	src = SinOsc.ar(notes,0,muls);
	Pan2.ar(src,pan,amp)
}).play;
)

(
Ndef(\tweet, {|amp=0.1, pan=0, rate=1, freq|
	var src, notes, trig;
//	rate = Rand(10,100);
	trig = Impulse.kr(rate);
	notes = Demand.kr(trig, 0, Dseq([Rand(100,333),Rand(100,333)],inf));
	src = SinOsc.ar(notes,0,amp);
	src = FreeVerb.ar(src,1,1,1);
	Pan2.ar(src,pan)
}).play;
)

// redfrik ones
Tdef(\tweet).stop;
(
// layers of beating sine tones
Tdef(\tweet, {
	99.do{ |i|
		i.postln; //keep track of iterations = Freq of LFO SinOsc...
		x = {
			var src, phase;
			phase = ((i%9).div(3)*100+ (i%9) +500).postln; // what are the phases?
			phase = SinOsc.ar(phase);
			src = SinOsc.ar(i+1, phase, 0.03);
			Pan2.ar(src,1.0.rand2)};
		x.play;
		2.wait;
		x.release(25)
}
}).play
)


// try this:
Ndef(\sine).play;
Ndef(\sine, { SinOsc.ar(200, 0, 0.1)!2}).play; // simple sine
Ndef(\sine, { SinOsc.ar(1, SinOsc.ar(400 * Rand(0.98,1.02)!2, 0, 0.5), 0.1) }).play;
Ndef(\sine).end(4);

/* by  redfrik */
(
// different filtered clicks
Tdef(\tweet, {
	99.do{
		x={
			var src = BPF.ar(Impulse.ar(18.linrand+0.5),9999.linrand,0.3.linrand,5);
			Pan2.ar(src,1.0.rand2)}.play;
		3.wait;
		x.release(9)
	}
}).play
)

/* by  redfrik */
(
//
Tdef(\tweet, {
	loop{
		var src = SinOsc.ar(999.rand).abs;
		var seq = TDuty.ar(src,0,src);
		var freqs = 4000.linrand;
		x={
			Formlet.ar(seq,freqs,src,1-src)!2
		}.play;
		wait(9.rand+1);
		x.release(39)
	}
}).play//#SuperCollider
)

/* by  redfrik */
(
// more clicking-chirping, swelling on & off
Tdef(\tweet, {
	loop{
		var randNum, fadeTime;
		randNum=20.rand+6;
		fadeTime=randNum;
		x={ var src=LFTri.ar(randNum).abs/9/randNum;
			src = TDuty.ar(src,0,src);
			RLPF.ar(src, randNum*600,0.06,9)!2}.play(s,0,fadeTime);
		wait(26-randNum);
		x.release
	}
}).play//#SuperCollider
)


/* by  redfrik */
(
// similar to above, chirpy and slow fading in/out
Tdef(\tweet, { |env, root=60|
	loop{
		var randNum, fadeTime;
		randNum=env[\root].rand+1;
		"root is %\n".postf(env[\root]);
		x={
			var src=LFTri.ar(randNum).abs/randNum;
			RLPF.ar(TDuty.ar(src,0,src),randNum*99 + src,0.01, 6+src)!2}.play(s,0,fadeTime);
		wait(randNum/3);
		x.release
	}
}).play//#SuperCollider
)
// now you can change the clicking frequency from outside...
Tdef(\tweet).set(\root, 80);

/* by  redfrik */
(
// watch out for server memory!
// a moving noisy wind...
Tdef(\tweet, {
	loop{
		var fadeTime = 19;
		var freq = 900;
		x={
			var src = ClipNoise.ar*0.4;
			var filterlfo = LFPar.kr({0.3.rand}!2,0,freq*2/3,freq);
			src = MoogFF.ar(src, filterlfo);
//			GVerb.ar(src,9,9,1)
			src
		}.play(s,0,fadeTime);

		3.wait;
		x.release
	}
}).play//#SuperCollider
)

/* by  redfrik */
(
Tdef(\tweet, {
	loop{
		var fadeTime=9;
		var relTime=69;
		x={ var trig,src, ffreq;
			trig = Impulse.ar(5.rand+1);
			src = Crackle.ar([1.9,1.8]);
			ffreq = 1200.rand;
			BPF.ar(Pluck.ar(src,trig,0.05,0.05.linrand),ffreq)}.play(s,0,fadeTime);
		wait(fadeTime);
		x.release(relTime)
	}
}).play
)

/* by  redfrik */
(
// some hpf'filtered noise waves
Ndef(\tweet, { |lag=2|
	var src, rand, freq, atk;
	rand = LFNoise1.ar(0.5!2); // is trigger and num Generator in stereo
	src =  Crackle.ar(rand.range(1.8,1.98));
	freq = TExpRand.ar(200, 2000, rand).lag(lag); // lag does the sweeping
	atk = rand.range(0.0005, 0.001);
	Formlet.ar(src, freq, atk,0.0012)
});
)

Ndef(\tweet).set(\lag, 0.1);

/* by  redfrik */
(
// doesnt work?
Ndef(\tweet, {
	var son;
	son = {|i| x=i+6.rand;
		Pbind(
			\dur,0.06,
			\sustain,1,
			\amp,0.01,
			\degree,Pgauss(x, sin(x+Ptime()%6/6e3)*9),
			\pan,Pkey(\degree)-x*9
		).play
	}!6;
	son
})
)

/* by  redfrik */
(
// nested sineoscs...
Ndef(\tweet, { |amp=0.1, rate=1, freq=500, freq1=0.31, freq2=0.21, freq3=0.11|
	var son, src, phase0, phase1, rates, freq4;
	src=SinOsc;
	rates = rate*[2,3];
	freq4 = src.ar(freq3, src.ar(0.01));
	phase0 = src.ar(freq4, 0, src.ar(rates,0,freq));
	phase1 = src.ar(src.ar(freq2), phase0);
	son = SinOsc.ar(
		src.ar(freq3), //freq
		phase1, //phase
		src.ar([0.3,0.21] * amp) // mul
	);
	LeakDC.ar(son)
})
)//#SuperCollider

Ndef(\tweet).stop;