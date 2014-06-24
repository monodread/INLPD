///////////////////////////////////
/*
SC Sketch for controlling Sounds through analog input.
Mixed mode:
One Monitor Ndef is scanning through two ongoing sound processes
*/
////////////////////////////////////
// Preparation, change this to match your serial port for arduino!

SerialPort.listDevices; // find your serial port again

(
q = q ? ();
q.myPort = "/dev/tty.usbserial-A900abYo"; // exchange in between " " with your port name
p = ArduinoSMS(q.myPort, 115200);
);


////////////////////////////////////////


(
// Code for receiving rom arduino
s.waitForBoot({ // boot the server and then do the following:

	var synth;

	q = q ? ();
	b = Bus.control(s, 1); // our one chan bus, make larger later if needed?


	// SETUP THE Sounds/Controls
	(
		Ndef(\monitor).play; // mixer for the two sounds
		Ndef(\sound1).play;
		Ndef(\sound2).play;
	);

	// the process for monitoring:
	(
		Ndef(\monitor, { |amp=1|
			var selector = In.kr(b,1).round(1); //MouseX.kr(0,3).round(1)
			// needs inFeedback or not?
			SelectX.ar(selector, [Ndef(\sound1).ar, Ndef(\sound2).ar]) * amp
		})

	);

	s.sync; // wait until the synth has been added to the server before continuing


//////////// ARDUINO
(
p = ArduinoSMS(q.myPort, 115200); // initialize port
// define port- action
p.action = { |... msg| "no action defined yet".postln};

// infinite reading loop, stops only when doing Cmd-Period
(
Tdef(\getValues, {
	inf.do {
		p.send($r, $a);
		0.05.wait; // ask for new values every 20ms
	}
}).play
);
);


///////// the sounds
(
Ndef(\sound1, {|pan=0, vol=1|
	var mod, amp, freq;
	freq = In.kr(b.index, 1).linexp(0, 400, 200, 10000); // first input value multiplies frequency
	amp = In.kr(b.index + 1, 1).linexp(0,400, 0.1,10.0); // second input value multiplies amplitude
	pan = In.kr(b.index + 2, 1).linlin(0,400,-1,1); // third input value pans the sound L-R
	mod = SinOsc.kr(In.kr(b.index + 3, 1)); // another oscilator for ringmodulation
	Pan2.ar(SinOsc.ar(freq * mod, 0, amp).softclip, pan, vol)
}).play
);

Ndef(\yoursound).play;
(
Ndef(\yoursound, { |freq=400, vol=1|
	var sensor1,sensor2,sensor3,sensor4, bus, amp;
	// rescaling the input values to anything you need
	bus = b.index;
	sensor1 = In.kr(bus+0, 1).linlin(0,400,0,1.0); // linear scaling from 0-400 to 0-1.0 (float)
	sensor2 = In.kr(bus+1, 1).linexp(0,400, 0.01,10); // exponential rescaling from 0-400, to 0.1-10
	sensor3 = In.kr(bus+2, 1).linlin(0,400, -1,1); // for panning, goes from -1, 1
	sensor4 = In.kr(bus+3, 1).linexp(0,400, 0.1,10);

	// put the sound process into here and use the sensor1-4 variables for parameters
	Pan2.ar(
		SinOsc.ar(freq * sensor2, 0, sensor1).softclip, // the sound to play, limiter built-in(softclip)
		sensor3, // the panning position
		vol
	)

});

)


(
p.action = { |... msg|
var busval;
//posting
"[sensor1: %,\t sensor2: %,\t sensor3: %,\t sensor4: %]\n".postf(msg[1],msg[2],msg[3],msg[4]); // uncomment THIS line to NOT get any value postings
// busval = msg[1].linexp(0,q.highValue,0.1,4).wrap(0,4); // dynamic sound selection by touch
busval = 0; // "hardcoded" soundselection here
// busval.postln;

// write values to bus
b.set(
busval,
msg[1].wrap(0,4),
msg[2],msg[3],msg[4]);

// play sound or not
if((msg[1]+msg[2]+msg[3]+msg[4] > 50), {Ndef(\monitor).set(\amp, 1);}, {Ndef(\monitor).set(\amp, 0)});

// vary the sounds:
Tdef(\poltergeist).set(\dir, msg[2].linlin(0,q.highValue,0,1), \freq, msg[3].linexp(0,q.highValue,130,2000), \sustain, msg[4].linlin(0,q.highValue,0.1,4));

Tdef(\blips).set(\freq, 200, \distort, msg[2].linexp(0,q.highValue,1,30), \sustain, msg[3].linexp(0,q.highValue,0.01,1.5), \waittime, msg[4].linlin(0,q.highValue,2,0.1));

Ndef(\darkAmb).set(\revtime, msg[2].linlin(0,q.highValue,0.1,80), \freq, msg[3].linlin(0,q.highValue,130,1000), \noise, msg[4].linexp(0,q.highValue,0.1,50));

Ndef(\crossroads).set(\rate, msg[2].linexp(0,q.highValue,0.1,30), \freq, msg[3].linexp(0,q.highValue,100,4000), \bass, msg[4].linlin(0,q.highValue,0,2.0));
q.highValue
};

);

})

);



