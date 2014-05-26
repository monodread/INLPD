// Ideas from Drexciya, 2009
// Bubbbles

(
// analog bubbles
{
	f = LFSaw.kr(0.4, 0, 24, LFSaw.kr([8,7.23], mul: 3, add: 80)).midicps; // glissando function
	 CombN.ar(SinOsc.ar(f, mul:0.04), 0.2, 0.2, 1, mul:0.5) // echoing sine wave
}.play)

(
// analog bubbles, schneller gliss "oeffnen"
{
	f = LFSaw.kr(1.8, 0, 24, LFSaw.kr([8, 7.23], mul: 8, add: 60)).midicps; // glissando function, wahlweise auch mul:10 statt 24
	 CombN.ar(SinOsc.ar(f, mul:0.04), 0.2, 0.2, 0.3, mul:0.7).sum // echoing sine wave
}.scope)

(
// analog bubbles 2er Array, fast/slow gliss
{
	f = LFSaw.kr([0.8, 0.1], 0, 24, LFSaw.kr([8, 7.23], mul: 3, add: 60)).midicps; // glissando function
	 CombN.ar(SinOsc.ar(f, mul:0.04), 0.2, 0.2, 0.3, mul:0.7) // echoing sine wave
}.scope)

//////////////// Gliss up + down

(
// analog bubbles, kein Hall
x = {
	f = SinOsc.kr(0.5, 0, 24, LFSaw.kr([8,7.23], mul: 5, add: 100)).midicps; // glissando function
	 CombN.ar(SinOsc.ar(f, mul:0.04), 0.5, 0.5, decaytime: 0.1, mul:0.5) // echoing sine wave
	};
x.play;
)
x.free;

(
// analog bubbles 2er Array, fast/slow gliss
x = {
	f = LFSaw.kr([0.8, 0.1], 0, 24, LFSaw.kr([8, 7.23], mul: 3, add: 60)).midicps; // glissando function
	 CombN.ar(SinOsc.ar(f, mul:0.04), 0.2, 0.2, 0.3, mul:0.7) // echoing sine wave
}.scope
)

x.free;




///////////////////////
(
// analog bubbles - with mouse control, rechte obere Ecke gibt "gurren"
Ndef(\bubblesXY, { | wetness = 0.1 | // decaytime CombN
	var freq;
	freq = LFSaw.kr(
		MouseY.kr(0.1,10,0),	// lfo 1 rate
		mul: 24, 							// lfo 1 depth in semitones
		// lfo 2 in lfo 1's add input :
		add: LFSaw.kr(
			MouseX.kr(2,40,1),	// lfo 2 rate
			-3, 60					// lfo 2 depth & offset in semitones, 50-60 auch interessant f�r offset!
		)
	).midicps; // convert to frequency
	 CombN.ar(SinOsc.ar(freq, 0, 0.04), 0.2, 0.2, wetness) // echoing sine wave
});
Ndef(\bubblesXY).play;
)

Ndef(\bubblesXY).stop
) 