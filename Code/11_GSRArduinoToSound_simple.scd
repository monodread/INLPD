// simple test for interfacing arduino to Sc

// ADAPT TO YOUR ARDUINO!

p.close;
SerialPort.listDevices; // find your serial port again


// START IT HERE, put your arduino serialname here
p = ArduinoSMS("/dev/tty.usbserial-A900abYo", 115200); // PUT YOUR OWN SERIAL PORT HERE!

// set up a 4-chan bus for the values
(
b.free;
b = Bus.control(s, 4);
// define what happens with the values
p.action = { |... msg| msg.postln; b.set(msg[1], msg[2], msg[3], msg[4])};
// to not see the values in the window, delete in the above "msg.postln;"
)

// infinite reading loop, stops only when doing Cmd-Period
(
Tdef(\getValues, {
	inf.do {
		p.send($r, $a);
		0.1.wait; // ask for new values every 10th of second
	}
}).play
);

// simple sine wave to play

Ndef(\testsine).play;
(
Ndef(\testsine, {|pan=0, vol=1|
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


//When its over, dont forget to close the port (before recreating it)
p.close; // close