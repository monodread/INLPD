///////////////////////////////////
/*
A Sketch for Communicating with the arduino for capsensing and other

Prerequisites:
1) You need to upload the sketch "SMS_IMMUdK_CapSense" in the folder githubDirectory/arduino/arduino-sketches onto your arduino.
Open the sketch with the ARDUINO software and then choose your board & serialport, e.g. Arduino UNO and something like "/dev/tty.usbserial-A900abYo" from the boards-menu.
And then upload the sketch.

2) You need to have the "arduino quark" installed. For this put the folder "ArduinoQuarkForSC" in the githubDirectory/arduino-folder in this folder on your system: (at least for MacOSX)
"[YourUserName]/Library/Application Support/SuperCollider/Extensions"
If there is no folder named "Extensions", then create one.
After this you need to recompile SuperCollider -> Menu "Language", Command "Recompile Class Library"

Now you are ready to go.

NOTE: you must not have the arduino programming environment running because there will be conflicts between the programmes about using the SerialPort! So you best shutdown Arduino software before starting this!
*/
/////////////////////////////////////


////////////////////////////////////
// this is some general setup
/////////////////////////////////////
(
q = (); // a dictionary to store variables
b = Bus.control(s, 4); // create a bus to write/read the values to/from
NdefMixer.new(s); // create a mixer for our ndef-sounds
TdefAllGui.new; // create a GUI to see the Tdefs which are running.
s.meter; // creates a meter View to see wether sound is playing
s.freqscope; // creates a frequency View of the output
);

/////////////////////////////////////
// CHANGE YOUR PORT BELOW
/////////////////////////////////////
/* to find your port:
SerialPort.listDevices;
*/
(
q.myPort = "/dev/tty.usbserial-A900abYo"; // put your SerialPort Name here
q.baudrate = 115200; // arduino sketch is running Serial communication on this speed!

)

/////////////////////////////////////
// Setup sounds to play: Part1
/////////////////////////////////////

(
Ndef(\monitor).play;
Ndef(\darkAmb).play;
Ndef(\crossroads).play;


Tdef(\poltergeist).set(\dir, 0, \freq, 1000, \sustain, 2);
Tdef(\blips).set(\freq, 200, \distort, 1, \sustain, 0.01, \waittime, 0.5);

Ndef(\darkAmb).set(\amp, 0); // mute the sounds for now
Ndef(\crossroads).set(\amp, 0);

// create the monitoring ndef

Ndef(\monitor, { |amp=1|
	// read 4 input channels from 3 upwards
	var selector = In.kr(b,1).round(1); //MouseX.kr(0,3).round(1)
	// needs inFeedback or not?
	SelectX.ar(selector, [InFeedback.ar([3,4]), InFeedback.ar([5,6]), Ndef(\darkAmb).ar, Ndef(\crossroads).ar]) * amp
})

)


/////////////////////////////////////
// Setup Sounds: Part2 ––-- The Sounds, two Tdefs and two Ndefs currently
/////////////////////////////////////
(

(
// the SynthDefs / Sounds for use in Tdefs
(
SynthDef('grainXLine', { arg out = 0, freq=800, sustain=0.01, amp=0.5, pan = 0.0;
		var window;
		window = Env.new([ amp, 0.001 ], [ sustain ], 'exponential');
		Out.ar(out,
			Pan2.ar(
				(SinOsc.ar(freq) * EnvGen.ar(window, doneAction:2)).clip2(1),
				pan
			)
		)
	}).add;
);

(
SynthDef('grain_interpret', { arg out = 0, freq=800, sustain=0.01, amp=0.5, preamp=1;
		var window, pitch;
		window = Env.sine(sustain, amp);
		pitch = (Rand(4) + 1 * freq).postln;

		Out.ar(out,
			SinOsc.ar(pitch, 0, preamp**3).tanh
			* EnvGen.ar(window, doneAction:2)
		)
	}).add;
);
(
SynthDef('hatXLRev', { arg out = 0, freq=8000, sustain=0.01, amp=0.5, pan = 0.0;
		var window;
		window = Env.new([ 0.001, amp ], [ sustain ], 'exponential');
		Out.ar(out,
			Pan2.ar(
				BPF.ar(ClipNoise.ar, freq, 0.1),
				pan,
				3
			) * EnvGen.ar(window, doneAction:2)
		)
}).add;
);


);

// the Tdefs
(
	Tdef(\poltergeist, { |env|
	inf.do{

	10.do{
			var dir,sound;
			dir = env[\dir]; //[0,1].choose; // put here: env[\direction] ?
			sound = ['hatXLRev', 'grainXLine']@dir.round(1);
			( 'instrument': sound, 'freq': env[\freq] * (8.0.rand + 0.4), 'sustain': env[\sustain], 'amp': exprand(0.3,0.5), 'pan': 0, 'out': 3	).play;

	0.1.wait;
	};

	[0.5,1,3].choose.wait; // took 5, 10 sec


	}
});
);

/*
// change some
Tdef(\poltergeist).set(\dir, 1, \freq, 700, \sustain, 4);
*/


// channel 2
// change: sustain, waittimes, preamp/dist

/*
// do this
Tdef(\blips).set(\freq, 200, \distort, 1, \sustain, 0.01, \waittime, 0.5);
*/

// then this
(
Tdef(\blips, { |env, freq=200|
	inf.do {
	50.do{
		var waittime = env[\waittime];
					( 'instrument': 'grain_interpret', 'freq': env[\freq], 'preamp': env[\distort], 'sustain': env[\sustain], 'amp': rrand(0.6,1), 'out': [5,6]	).play;

		([waittime*1/3, waittime * 2/3].wchoose([0.8,0.2])).wait;
	};

	1.wait;
	}

})
);
/*
// change some
Tdef(\blips).set(\freq, 200, \distort, 0.85, \sustain, 0.01, \waittime, 0.8);
*/


// the NDEFS

// channel 3
// change: revtime, freq, noise
(
Ndef(\darkAmb, {|noise=1, dur=9, root=36, freq=55, fbQ=1, room=70, revtime=99, amp=0.1|
	var src, snd;
	src = PinkNoise;
	src = HPF.ar(src.ar(0.005*noise),10) * Line.kr(0,1,dur);
	snd = ({|i| Ringz.ar(src*LFNoise1.kr(0.05+0.1.rand)*fbQ,freq*i+root.midicps,0.2)}!99);
	snd = GVerb.ar(snd.sum,room,revtime).tanh;
	snd = Limiter.ar(snd) * 5 *amp;
	SplayAz.ar(2, snd, width:2, center: LFNoise1.kr(0.01).range(0,2), orientation:0);
});
);

/// channel 4
// change: bass, frequency, rate

(
Ndef(\crossroads, {arg rate=0.1, amp=1, freq=200, bass=0.3;
	var in, son, filt, rand, mod, which;
	in = SoundIn.ar(0,0.1);
	son = WhiteNoise.ar(20);
	rand = TRand.kr(0.1, 10, Dust.kr(rate));
	mod = [LFSaw.kr(rate*rand).range(0.5,2), LFTri.kr(rate*rand, 1).range(0.5,2)]@0;
	filt = BBandPass.ar(son, freq * mod, 0.1,  LFNoise1.kr(rate)).softclip;
	son = Pan2.ar(filt, LFNoise1.kr(LFNoise0.kr(rate)), amp) + BLowPass.ar(son, freq/3, 1, bass);
	Limiter.ar(son);
})
);

);


/////////////////////////////////////////////////////////////////
// SETUP CONTROLS 1: ARDUINO SETUP
/////////////////////////////////////

(
p.close; // close port, if already opened
p = ArduinoSMS(q.myPort, q.baudrate); // OPEN ONCE

// p.action = { |... msg| msg.postln; }; // define what happens when calling the port, here: just post

// p.action should write to buses
p.action = { |... msg| "[sensor1: %,\t sensor2: %,\t sensor3: %,\t sensor4: %]\n".postf(msg[1],msg[2],msg[3], msg[4]); b.set(msg[1],msg[2],msg[3],msg[4])};
// p.action = nil; // no actions!

// this function reads the port repeatedly in a loop
(
Tdef(\getAna, {
	inf.do{
		p.send($r, $s);
		0.25.wait; // new readings every quarter second
	}
})
)

Tdef(\getAna).play; // start the value-getting routine

);

/////////////////////////////////////
// Some Examples when using command lines:
/////////////////////////////////////


// read digital inputs
p.send($r, $d);
// read analog inputs
p.send($r, $a);
// read sensing inputs
p.send($r, $s);


/////////////////////////////////////
// SETUP CONTROLS 2: Sound mapping to Input
/////////////////////////////////////

(
Tdef(\poltergeist).play;
Tdef(\blips).play;
Ndef(\darkAmb).end(4);
Ndef(\crossroads).end(4);

/* if Port fails, then clean up
Tdef(\getAna).stop; p.close; Ndef(\monitor).set(\amp, 0);
// and then reopen port and start reading routine again
p = ArduinoSMS(q.myPort, q.baudrate); Tdef(\getAna).play;
*/

// put new actions in -> write to Buses and set the Tdefs!
(
p.action = { |... msg|
	var busval;
	//posting
	"[sensor1: %,\t sensor2: %,\t sensor3: %,\t sensor4: %]\n".postf(msg[1],msg[2],msg[3],msg[4]); // uncomment THIS line to NOT get any value postings
	busval = msg[1].linexp(0,400,0.1,4).wrap(0,4);
	// busval.postln;
	b.set(
		busval,
		msg[1].wrap(0,4),
		msg[2],msg[3],msg[4]);
	if((msg[1]+msg[2]+msg[3]+msg[4] > 0), {Ndef(\monitor).set(\amp, 1);}, {Ndef(\monitor).set(\amp, 0)});
	// vary the sounds:
	Tdef(\poltergeist).set(\dir, msg[2].linlin(0,150,0,1), \freq, msg[3].linexp(0,150,130,2000), \sustain, msg[4].linlin(0,150,0.1,4));

	Tdef(\blips).set(\freq, 200, \distort, msg[2].linexp(0,150,1,30), \sustain, msg[3].linexp(0,150,0.01,1.5), \waittime, msg[4].linlin(0,150,2,0.1));

	Ndef(\darkAmb).set(\revtime, msg[2].linlin(0,150,0.1,80), \freq, msg[3].linlin(0,150,130,1000), \noise, msg[4].linexp(0,150,0.1,50));

	Ndef(\crossroads).set(\rate, msg[2].linexp(0,150,0.1,30), \freq, msg[3].linexp(0,150,100,4000), \bass, msg[4].linlin(0,150,0,2.0));

	};

);

);

////////////////////////
// Switch things off
////////////////////////

(
Tdef(\poltergeist).stop;
Tdef(\blips).stop;

Ndef(\darkAmb).stop;
Ndef(\crossroads).stop;

Ndef(\monitor).stop;
p.close;
b.free;
);


//////////////////// EOF
