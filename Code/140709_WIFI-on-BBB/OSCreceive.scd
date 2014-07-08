// OSC receive test
OSCFunc.trace; // see all traffic
OSCFunc.trace(false);

// just the two packets send through the file "inpld_twopins_toLaptop.py"

OSCdef(\fromBBB1, {|... msg| msg.postln}, '/fromPython/dig0')
OSCdef(\fromBBB2, {|... msg| msg.postln}, '/fromPython/adc0')