
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
