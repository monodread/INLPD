// revisited arduino connection with dominiks advice

(
s.waitForBoot({
	q = q ? ();
	NdefMixer.new(s);
	// s.meter;
	// s.freqscope;

	// find your port:SerialPort.listDevices;
	q.myPort = "/dev/tty.usbserial-A900abYo";
	q.baudrate = 115200;

	q.mapFunc = { |q, vals|
		Ndef(\perc).set(\freq, \freq.asSpec.map(vals[0]));
		Ndef(\perc).set(\sus, \sus.asSpec.map(vals[1]));
		Ndef(\perc).set(\dcy, \dcy.asSpec.map(vals[2]));
		Ndef(\perc).set(\dist, \dist.asSpec.map(vals[3]));

	};



	(
		// create sound proxy
		Ndef.ar(\perc, 2);

		// add some specs
		Spec.add(\dcy, [0.0001, 1.0, \exp]); // old way, check out other mappings in ControlSpec
		Spec.add(\atk, [0.01, 1.0, \exp]);
		Spec.add(\sus, [0.01, 5.0, \exp]);
		Spec.add(\rel, [0.01, 1.0, \exp]);
		Spec.add(\dist, [1, 10, \lin]);
		// rest of specs are default

		Ndef(\perc, { arg freq=1200, atk=0.01, dcy=0.1, sus=0.2,rel=0.2, dist=4, t_trig=0, sustain=1, amp=0.5, pan=0;
			var son, env;
			env = Env([0.0, 1.0, 0.5, 0.0], [atk, sus, dcy, rel], -4);
			env = EnvGen.kr(env, t_trig, timeScale:sustain);
			son = SinOsc.ar(freq * (env**0.5),0,dist).tanh;
			son * env * amp
		});
	);


	(
		p.action = { |... msg|
			//posting
			msg.postln;
			// play or be silent when no value is there
			if((msg[1]+msg[2]+msg[3]+msg[4] > 0), {Ndef(\perc).set(\amp, 1);}, {Ndef(\perc).set(\amp, 0)});
			// map values to the sounds:
			q.mapFunc(msg.drop(1)); // drop the first value which is a char

		};
	);



})


);
