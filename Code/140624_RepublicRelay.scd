// SKETCH FOR RELAYING INCOMING values to republic events...

// Server.killAll;
(
// make a sub dict for responders
q = q ? ();
q.resp = ();

// for Ndefs in Republic set servers
s = r.myServer;
Ndef.defaultServer = r.myServer;
Ndef.clear;
)

///////////////////////
// prepare listening to ndef-related messages:
// SC 3.44 OLD STYLE responders!
(
q.resp[\setndef] = OSCresponder(nil, '/setndef', { |t, resp, msg|
		var ndefname, pairs;
		ndefname = msg[1]; // second item in 'msg' is ndefname
		pairs = msg.drop(2); // get rid of 1st and 2nd item in 'msg'
		msg[2].switch(
		\end, {Ndef(ndefname).end(msg[3]);"End %".postf(ndefname);},
		\play,{Ndef(ndefname).play;"Play %".postf(ndefname);},
		{ Ndef(ndefname).xset(*pairs); // * adds the items in the array, not the array itself!
		};
		);
	}).add;
);



(
// watchout can sometimes get loud
Ndef(\traffic, { |x = 0.5, y = 0, z = 0, amp=0.1|
	SinOsc.ar([240, 439] + (x * 1000) * 2, 0, 0.8)
	*
	LFPulse.kr(y.linexp(0, 1, 0.1, 1000), 0, z.linlin(0,1,0.1, 0.9), amp)
})
);

/*
// REMOTE CONTROLLING NDEFS

// test one, with some random values
NdefMixer.new(s);
s.meter;

r.send(\jonas, '/setndef', \traffic, \play);
r.send(\jonas, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);
// specific
r.send(\jonas, '/setndef', \traffic, \x, 0.5, \y, 0.5, \z, 0.5, \amp, 0.5);

r.send(\jonas, '/setndef', \traffic, \end);


// works same like the general OSC sendMsg method...
NetAddr.localAddr.sendMsg('/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);
*/

//////////////////////////////////////////////////////
(
// set some defaults for the Tdef
Tdef(\grains).set(\freq, 3400, \sustain, 0.05, \amp, 0.3);
// example Tdef
Tdef(\grains, { |env|

	50.do{|i|

		(
		'instrument': 'grainSine',
		'freq': env[\freq] + (220 / (i%10)),
		'sustain': env[\sustain],
		'amp': env[\amp],
		'pan': 0,
		'where': 0
		).play;

		0.1.wait;
	}
});

);

Tdef(\grains).play; // play it once
Tdef(\grains).set(\freq, 400, \sustain, 0.05, \amp, 0.3).play; // change params and replay

////////////////////////////////
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

/////////////////////////
(
q.mapFunc = { |q, vals|
		Ndef(\sound2).set(\freq, \freq.asSpec.map(vals[0]));
		Tdef(\grains).set(\freq, \freq.asSpec.map(vals[0]), \sustain, \sustain.asSpec.map(vals[1]), \amp, vals[2]);
	};

);

(
q.resp[\relayOSC] = OSCresponder(nil, '/gsr', { |t, resp, msg|
	var vals =  msg.drop(1).asArray;
	vals.postln;
	// q.mapFunc(vals);
	r.send(\jonas, '/setndef', \traffic, \x, vals[0], \y, vals[1], \z, vals[2], \amp, vals[3]);
	}).add;
// r.send(\jonas, '/setndef', \traffic, \play);
// r.send(\jonas, '/setndef', \traffic, \x, 1.0.rand, \y, 0.5.rand, \z, 1.0.rand, \amp, 0.5.rand);

);


/*
r.send(\jonas, '/setndef', \traffic, \play);
NdefMixer.new(s);
NetAddr.langPort

// fake OSC Sender

	n = NetAddr("127.0.0.1", 57122); // or localhost

	(
		Tdef(\fakeGSR, {
			inf.do{
				n.sendMsg("/gsr", rrand(0,1.0),rrand(0,1.0),rrand(0,1.0),rrand(0,1.0));
//				n.sendMsg("/gsr", 1,2,3);
				rrand(0.1,0.5).wait;
			}
		}).play
	)


*/