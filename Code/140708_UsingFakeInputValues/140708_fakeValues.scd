// sketch for faking incoming values to optimize mapping:
(
q= q?();
q.oscpath='/fakeArduino';
n = NetAddr.localAddr; // send to myself

// pins2 + [3,4,5,6,7,8,9,10,11,12].size

Tdef(\capSenseVals, {
	arg dur, rand, vals;
	dur=3;
	vals = 0!10; // we have ten incoming capSense Vals?
	inf.do{
		rand = 300.rand;
		30.do{|i|
			var r2 = Array.fill(10, {(i+1.0).rand});
			vals = r2*rand;
			n.sendMsg(q.oscpath, vals.cs);
			0.02.wait;
		};
			dur.wait;
	}

}).play;

OSCdef(\capSenseVals, {|msg| msg[1].postln;}, q.oscpath);


//////////////////////
// add the six "analog values" to the routine
Tdef(\capSenseVals, {
	arg dur, rand, capSenseVals, capTouchVals;
	dur=3;
	capSenseVals = 0!10; // we have ten incoming capSense Vals?
	capTouchVals = 0!6; // six incoming analog values
	inf.do{
		rand = 300.rand;
		30.do{|i|
			var vals;
			capSenseVals = Array.fill(10, {rrand(i,i*2) * rand});
			capTouchVals = Array.fill(6, {1023.rand});
			vals = capTouchVals ++ capSenseVals; // chain the arrays together
			n.sendMsg(q.oscpath, vals.cs);
			rrand(0.01,0.1).wait;
		};
		rrand(0.1,dur).wait;
	}

}).play;

)


(
OSCdef(\capSenseVals, {|msg|
//	msg[1].postln;
}, q.oscpath);
)

