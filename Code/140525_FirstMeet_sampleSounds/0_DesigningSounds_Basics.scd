// 25.5.14
// Designing Sounds in SuperCollider
// BASICS
////////////////////////////////////////////////////////////////////////
/* There are two main ways of playing a sound:
1) Write a SynthDef (the sound 'recipe') which kills itself after playing,
play it with a single Event (anything between just two brackets with a .play after)
or play consecutive Events with a higher structure like a) Tdef or b) Pdef

2) Write a sound and change it while it keeps playing using the JITLib library
(this is practical for development of sounds). The structure for this is 'Ndef'

Depending on which way you choose to go you need to follow some basic syntax rules.
Here is a "Way 1) Template":
*/
// executing this block, registers the synth definition
(
SynthDef(\NameOfSynthDef, { arg out, freq=440, amp=0.4, atk=0.01, sus=1, pan=0;
	var son, env;  // set up internal variables here for readability
	env = EnvGen.kr(Env.new([0,amp,0], [atk, sus]), doneAction:2); // an envelope which goes from 0 to amp-value with time of atk and from amp-value to zero in time given by sus, doneAction:2 will "free" the sound when the envelope has ended playing.
	// that keeps the count of synths low on the server, saves cpu and is less bookkeeping for us (dont have to remember which synths are still playing, silently or not etc
	son = SinOsc.ar(freq);  // use any oscillator here. remember: do HELP on "Tour of Ugens"
	son = Pan2.ar(son * env, pan); // using a simple panner to control panorama and make sounds stereo
	Out.ar(out, son)	// Any sort of "Out Ugen" is needed for any Synth! for this we need to add "out" to the arguments above
}).add;
)
// this plays it once
Synth(\NameOfSynthDef);

// this does the same but using an 'Event' (as described above) with so called key-value pairs
// note the syntax is "someKey: value," and the last value must not have a comma at the end...
// the keys which are the synths arguments can be written with backslash or without. works both
(instrument: \NameOfSynthDef, freq: 640, amp: 0.5, atk: 0.1, sus: 2).play;
// you can add more parameternames (keys) with some values but it wont influence anything.
(instrument: \NameOfSynthDef, freq: 640, amp: 0.5, atk: 0.1, sus: 2, crispness: 10).play;
// unless you hit one of the default parameternames, e.g. detune
(instrument: \NameOfSynthDef, freq: 640, amp: 0.5, atk: 0.1, sus: 2, detune: 20).play;


// here is the template again, WITHOUT comments to work with and modify

(
SynthDef(\NameOfSynthDef, { arg out, freq=440, amp=0.4, atk=0.01, sus=1, pan=0;
	var son, env;
	env = EnvGen.kr(Env.new([0,amp,0], [atk, sus]), doneAction:2);
	son = SinOsc.ar(freq);
	son = Pan2.ar(son * env, pan);
	Out.ar(out, son)
}).add;
)

// to not have to play this sound over and over with executing one line, you could call it from a pdef:
(
Pdef(\playloop,
	Pbind(
		\instrument, \NameOfSynthDef,
		\freq, 440,
		\amp, 0.4,
		\atk, 0.01,
		\sus, 1,
		\pan, 0,
		// this is added in the Pbind to give the "wait-time" between two consec. events
		\dur, 10
)).play
)

// now you can keep changing the SynthDef while the playloop Pdef keeps playing it.


// one example of where you could go with this
(
SynthDef(\NameOfSynthDef, { arg out, freq=440, amp=0.4, atk=0.1, dec=0.9, sus=1, pan=0, lfo=1;
	var son, env, filterlfo, dur;
	dur = sus * (atk+dec);
	env = EnvGen.kr(Env.new([0,amp,0], [atk, dec]), timeScale:sus, doneAction:2);
	son = Mix.fill(8, { // Mix.fill creates an Array of Oscillators, here: 8
		LFPar.ar(freq * exprand(0.5,4), 0, LFNoise1.kr(13).range(20,100)).tanh; // .tanh works as a limiting function for any signal
	});
	filterlfo = LFSaw.kr(lfo/dur, 1).range(0.25,2); // could use an Envelope also
	son = MoogFF.ar(son, freq*filterlfo, LFNoise1.kr(dur/lfo,add:2)); // Moog style filter
	son = Splay.ar(son * env,0,0.5,pan); // if you generate more than two channels, Splay wraps them to Stereo
	Out.ar(out, son)
}).add;
)

Synth(\NameOfSynthDef, [\freq, 600, \amp, 0.4, \sus, 4, \atk, 0.1]);
Synth(\NameOfSynthDef, [\freq, 230, \amp, 0.4, \sus, 2, \atk, 0.2, \lfo, 6]); // active filtermod

(
Pbindef(\playloop,
	\lfo, Pseq([Pn(3,4),Pn(Prand([1,7],1),2)],inf),
	\freq, (Prand([60,72],inf) + Pseq([Pshuf([4,3,2,1],1), 1,1],inf)).midicps,
	\legato, 0.5,
	\dur, Pseq([ Pn(Prand([1,0.5],1),4), Pn(0.1,2)],inf) * 0.5
)
)




////////////////////////////////////////////////////////////////////////
// I will leave the Ndef for now. This gets too complicated maybe?
// But just write this down so you have seen it already.

// MAIN DIFFERENCES:
// Ndef does not need / should have any Out Ugen
// Ndef should not be given a doneAction:2, so that it does not terminate itself. but rather you would use an Envelope (if you want) with a gate paramter, that opens and closes it (retriggers).

(
Ndef(\blip, { arg rate=2, freq=440, freqmod=1, harm=4, dist=1, atk=0.01, sus=1, lag=0.1, amp=0.5, pan=0;
	var son, trig, env, notes;
	freq = LFNoise0.kr(rate, freqmod, freq).lag(lag); // make some randomized detuning
	rate = rate * [3/2, 2];
	trig = Impulse.kr(rate);
	env = EnvGen.kr(Env.new([0,1,0],[atk,LFNoise0.kr(rate,0.5,1)*sus/(4*rate)]), trig);
	notes = freq.cpsmidi.round(0.5).midicps; // round it to quarter tones
	Splay.ar(Blip.ar(notes, harm, 0.01+dist).softclip * env, 0,amp,pan)
})
);

// Then Play the Ndef
Ndef(\blip).play
// set parameters
Ndef(\blip).set(\freq, 300, \harm, 4, \freqmod, 20);

Ndef(\blip).end(5); // end the sound in 5 secs with fade out

// Show a GUI for the Sound, with num of controls so its large enough
Ndef(\blip).source.postcs; // see the source code again in post window
NdefGui(Ndef(\blip), 12);
// now you can play/start/stop it from Gui too