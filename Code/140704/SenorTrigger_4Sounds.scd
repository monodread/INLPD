Server.killAll;

// BOOT SERVER
s.boot;

////////////////////
(
SerialPort.closeAll; // close all opened ports
q = q ? ();
q.myPort = "/dev/tty.usbmodemfd121";
q.baudrate = 115200;
q.myInterface = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE
);


(
q.numOfSensors = 11;
s.latency = nil;
q.arduinoOldVals = {0}.dup(q.numOfSensors);
q.trig0thresh = 0.3; // change the sensitive for trigger here
// currently not set up ?
q.trig1thresh = 0.3; // change the sensitive for trigger here
q.trig2thresh = 0.3; // change the sensitive for trigger here
q.trig3thresh = 0.2; // change the sensitive for trigger here
q.trig4thresh = 0.3; // change the sensitive for trigger here
);


/*
\sus.asSpec; // returns 'nil' -> no Spec exists for the param \sus

\freq.asSpec ; // returns: a ControlSpec(20, 20000, 'exp', 0, 440, " Hz")
// so for \freq exists a default Spec.

Spec.add(\sus, [0.001,3,\lin]); // give the vallue range within square brackets (an Array) with the following arguments:
[minValue, maxValue, curve, stepsize: defaults to 1]
q.myInterface.action = nil;
*/

(
// add specs for the sounds
Spec.add(\dcy, [0.0001, 1.0, \exp]);
Spec.add(\atk, [0.01, 1.0, \exp]);
Spec.add(\sus, [0.01, 5.0, \exp]);
Spec.add(\rel, [0.01, 1.0, \exp]);
Spec.add(\dist, [1, 10, \lin]);
Spec.add(\ring, [0.1, 10.0, \exp]);
Spec.add(\noise, [0.1, 1000, \exp]);
Spec.add(\crip, [0, 10000, \lin]);
Spec.add(\pw, [0.001, 1, \lin]);
Spec.add(\bw, [1, 20, \lin]);
Spec.add(\pulse, \amp);
Spec.add(\preamp, [1,200,\lin]);
)


Ndef(\capSense).play
Ndef('grain_interpret').play
// adda mixer to see the sounds
NdefMixer.new(s);

q.myInterface.action = nil;
///////// DO SOUNDS FIRST : Below /////////
(
q.myInterface.action = { |... msg|
	var myVals = (msg.keep(6))/1023;
	var capSenseNorm = msg[7];
	var capSenseVals = msg.drop(7) / 100; // manual normalization
	var trig0 = ((myVals[0] > q.trig0thresh) && (q.arduinoOldVals[0] < q.trig0thresh));
	var trig1 = ((capSenseVals[1] > q.trig1thresh) && (q.arduinoOldVals[9] < q.trig1thresh));
	var trig2 = ((capSenseVals[0] > q.trig2thresh) && (q.arduinoOldVals[8] < q.trig2thresh));
//	var trig3 = ((myVals[0] > q.trig3thresh) && (q.arduinoOldVals[0] < q.trig3thresh));
	var trig4 = ((myVals[4] > q.trig4thresh) && (q.arduinoOldVals[4] < q.trig4thresh));
	//simple posting
	// msg.postln;
	"Analog Vals: % \n".postf(myVals.round(0.01));
	"CapSensing Vals: % \n".postf(capSenseVals.round(0.01));

	////////// TRIGGER SECTION
	if(trig0)  { "		Perc".postln;
		Ndef(\perc).set(\t_trig, 1);};
	if(trig2)  { "			SNARE".postln;
		Ndef(\snare).set(\t_trig, 1);};
	if(trig1)  { "			GRAINS".postln;
		Ndef('grain_interpret').set(\t_trig,1);};

	///////////// MODIFY SOUND SECTION (working all the time)
	Ndef(\perc).set(\freq, myVals[2].linexp(0,1,200,10000), \sus, \sus.asSpec.map(myVals[2])); // which sensor in brackets
	Ndef(\snare).set(
//		\freq,\freq.asSpec.map(myVals[0]),
		\noise, \noise.asSpec.map(myVals[1]),
		//\ring, \ring.asSpec.map(myVals[3]),
		\sustain, \sus.asSpec.map(myVals[2]),
		\crisp, 1000);

	Ndef('grain_interpret').set(
		\freq, myVals[2].linexp(0,1,300,6000),
		\sustain, \sus.asSpec.map(myVals[2]),
//		\amp, myVals[0],
		\preamp, \preamp.asSpec.map(myVals[0]));

	Ndef(\capSense).set(
		\freq, myVals[2].linexp(0,1,300,6000),
		\amp, \amp.asSpec.map(myVals[0]),
//		\lofreq, capSenseVals[1].linlin(0,200,0.5,10),
		\bw, capSenseVals[3].linlin(0,10,1,30)
	);

	// overwrite old values with new ones

	q.arduinoOldVals = myVals ++ capSenseNorm ++ capSenseVals;

};
)



///////////////////////
// SOUND
(

(
// create sound proxy
Ndef.ar(\perc, 2);

Ndef(\perc, { arg freq=1200, atk=0.01, dcy=0.1, sus=0.2,rel=0.2, dist=4, t_trig=0, sustain=1, amp=0.5, pan=0;
	var son, env;
	env = Env([0.0, 1.0, 0.5, 0.0], [atk, sus, dcy, rel], -4);
	env = EnvGen.kr(env, t_trig, timeScale:sustain);
	son = SinOsc.ar(freq.lag(5) * (env**0.5),0,dist).tanh;
	son * env * amp
});

// add some specs
Ndef(\perc).addSpec(\dcy, [0.0001, 1.0, \exp]);
Ndef(\perc).addSpec(\atk, [0.01, 1.0, \exp]);
Ndef(\perc).addSpec(\sus, [0.01, 5.0, \exp]);
Ndef(\perc).addSpec(\rel, [0.01, 1.0, \exp]);
Ndef(\perc).addSpec(\dist, [1, 10, \lin]);
// rest of specs are default

Ndef(\perc).play
);

// PERCUSSIVE Ndefs

(
Ndef(\snare,
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
);

Ndef(\snare).addSpec(\ring, [0.001, 10.0, \exp]);
Ndef(\snare).addSpec(\noise, [0, 1000, \exp]);
Ndef(\snare).addSpec(\crip, [0, 10000, \lin]);

Ndef(\snare).play;
);


// example timbres
Ndef(\snare).set(\t_trig, 1, \amp, 0.1, \noise, 1, \ring, 1, \sustain, 3, \crisp, 3000);
Ndef(\snare).set(\t_trig, 1,\amp, 0.2, \noise, 100, \ring, 1, \sustain, 0.1, \crisp, 10000);
Ndef(\snare).set(\t_trig, 1,\amp, 0.9, \noise, 1000, \ring, 5, \sustain, 0.3, \crisp, 100);
Ndef(\snare).set(\t_trig, 1,\amp, 0.7, \noise, 100, \ring, 0, \sustain, 1.3, \crisp, 10000);

(

Ndef(\vacuum, { arg freq=400, noise=1, amp=0.5, pw=0.3, pulse=1;
	var snd;
	snd = BBandPass.ar(WhiteNoise.ar(noise) + Pulse.ar(freq, pw, pulse), freq, pw);
	Pan2.ar(snd.softclip, 0, amp)
});
);


Ndef(\capSense, { arg freq=400, noise=1, amp=0.5, bw=1, lofreq=1;
	var snd;
	snd = BBandPass.ar(WhiteNoise.ar(noise), freq, bw);
	snd = snd; // * LFPulse.kr(lofreq);
	Pan2.ar(snd.softclip, 0, amp)
});

(
Ndef('grain_interpret', { arg t_trig=1, freq=800, sustain=0.2, amp=0.5, preamp=1;
		var window, pitch, seq;
		window = Env.sine(sustain, amp);
	//seq = TDuty.ar(Dseq([0.1, 0.2, 0.4, 0.3]), 0, Dseq(Harmonics.new.geom,inf));
		pitch = (Rand(4) + 1 * freq).postln;
			SinOsc.ar(pitch, 0, preamp**3).tanh
			* EnvGen.ar(window, t_trig)
	});
);

)
/////////////////////




/// OTHER
// trig once by hand
Ndef(\perc).set(\t_trig, 1);

NdefMixer.new(s);


