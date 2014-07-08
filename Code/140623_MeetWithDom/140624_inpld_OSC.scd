////////////

s.boot;
////////////
q = q ? ();

///////////

s.latency = nil;
q.trig0tresh = 0.88;
q.oldVals = [0];


(
OSCdef(\fromBBB, {arg msg;
	var myVals = msg.drop(1);
	var trig = ((myVals[0] > q.trig0tresh) && (q.oldVals[0] < q.trig0tresh));
	// msg.postln; // verbose
	q.mapFunc(myVals);
	if(trig)  { "neuer trigger!".postln; Ndef(\perc).set(\t_trig, 1);};

	q.oldVals = myVals;

	}, '/gsr');

);

(
// create sound proxy
Ndef.ar(\perc, 2);

// add some specs
Ndef(\perc).addSpec(\dcy, [0.0001, 1.0, \exp]);
Ndef(\perc).addSpec(\atk, [0.01, 1.0, \exp]);
Ndef(\perc).addSpec(\sus, [0.01, 5.0, \exp]);
Ndef(\perc).addSpec(\rel, [0.01, 1.0, \exp]);
Ndef(\perc).addSpec(\dist, [1, 10, \lin]);
// rest of specs are default

Ndef(\perc, { arg freq=1200, atk=0.01, dcy=0.1, sus=0.2,rel=0.2, dist=4, t_trig=0, sustain=1, amp=0.5, pan=0;
	var son, env;
	env = Env([0.0, 1.0, 0.5, 0.0], [atk, sus, dcy, rel], -4);
	env = EnvGen.kr(env, t_trig, timeScale:sustain);
	son = SinOsc.ar(freq * (env**0.5),0,dist).tanh;
	son * env * amp
});
);

Ndef(\perc).play


/*
// trig once by hand
Ndef(\perc).set(\t_trig, 1);
*/
NdefMixer.new(s);

/////////////////////////////////////////
(
q.mapFunc = { |q, vals|
		Ndef(\sound2).set(\freq, \freq.asSpec.map(vals[0]));
	};

);

(
Ndef(\sound2, {arg rate=0.1, amp=1, freq=200, bass=0.3;
	var in, son, filt, rand, mod, which;
	in = SoundIn.ar(0,0.1);
	son = WhiteNoise.ar(20);
	rand = TRand.kr(0.1, 10, Dust.kr(rate));
	mod = [LFSaw.kr(rate*rand).range(0.5,2), LFTri.kr(rate*rand, 1).range(0.5,2)]@0;
	filt = BBandPass.ar(son, freq * mod, 0.1,  LFNoise1.kr(rate)).softclip;
	son = Pan2.ar(filt, LFNoise1.kr(LFNoise0.kr(rate)), amp) + BLowPass.ar(son, freq/3, 1, bass);
	Limiter.ar(son, amp);
})
);

Ndef(\sound2).play;
Ndef(\sound2).set(\amp, 0);
Ndef(\sound2).set(\amp, 1);

