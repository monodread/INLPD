
Ndef(\crossroads).clear

Ndef(\monitor).play;

Ndef(\monitor, {Pan2.ar(SoundIn.ar(0,0.5))});

Ndef(\crossroads).play;

(
Ndef(\crossroads, {arg rate=0.1, amp=1, freq=200, bass=0.3;
	var in, son, filt, rand, mod, which;
	in = SoundIn.ar(0,0.1);
	son = WhiteNoise.ar(20);
	rand = TRand.kr(0.1, 10, Dust.kr(rate));
	mod = [LFSaw.kr(rate*rand).range(0.5,2), LFTri.kr(rate*rand, 1).range(0.5,2)]@0;
	filt = BBandPass.ar(son, freq * mod, 0.1,  LFNoise1.kr(rate)).softclip;
	son = Pan2.ar(filt, LFNoise1.kr(LFNoise0.kr(rate)), amp) + BLowPass.ar(son, freq/3, 1, bass);
	son
})
)

Ndef(\crossroads).end;
Ndef(\crossroadsB).play;

(
Ndef(\crossroadsB, { arg freq=1000, rate=13, amp=0.5;
	var son, filt, mod;
	son = Blip.ar(freq * SinOsc.kr(LFNoise0.kr(rate),0,0.1,1), LFNoise0.kr(rate).exprange(1,20));
	son = son * LFPulse.kr(rate * LFNoise0.kr(rate/3 * LFNoise0.kr(rate,1,1) , 0.1).abs);
	son = Pan2.ar(son, 0, amp)
	}
);
)


Ndef(\crossroadsB).set(\freq, 1000);
Ndef(\crossroadsB).unset(\freq);

Ndef(\crossroadsB)[1] = \set -> Pbind(
	\freq, Pwhite(50,80,inf).midicps,
	\dur, 5);

Ndef(\crossroadsB).end(10);
Ndef(\crossroads).end(10);



//////////////////////
// record skype output
// its just noise! so quiet

// start soundflower
// then
s.options.inDevice = "Soundflower (2ch)";
s.reboot;

// monitor soundflower here
Ndef(\inChan).play;
Ndef(\inChan, {arg freq=300, mul=1; HPF.ar(Pan2.ar(SoundIn.ar(0,1)), 180, mul)});
Ndef(\inChan, {arg freq=300, mul=1; BRF.ar(HPF.ar(Pan2.ar(SoundIn.ar(0,1)), 180, mul), freq, 2)});

NdefMixer(s)
// filter it!
(
Ndef(\inChan, {
	arg mul=1, freq1=1300, rq1=2, mul1=1,
	freq2=200, rq2=0.7, mul2=1,
	freq3 = 5400, rq3=0.7, mul3=2,
	freq4 = 100, rq4=1.2, mul4=0.6,
	dry=0.5;

	var in = Pan2.ar(SoundIn.ar(0,1));
	var hpf = HPF.ar(in, 180, mul);
	var filt = BRF.ar(hpf, freq1, rq1, mul1);
	var reso1 = Resonz.ar(filt, freq2, 0.7, mul2);
	var reso2 = Resonz.ar(filt, freq3, 0.7, mul3);
	var reso3 = Resonz.ar(filt, freq4, rq3, mul4);
	(hpf*dry) + reso1 + reso2 + reso3
});
)

// record
s.record

// fade out, when enough
Ndef(\inChan).end(10)

// then stop
s.stopRecording




Ndef(\inChan).play;