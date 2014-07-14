// Network / Republic Add-Ons for INPLD. 
// 14.7.14
(
// Add some responders:
q.resp = q.resp ? (); 
/*
q.resp[\digitalVals] = OSCresponder(nil, '/setndef', { |t, resp, msg|
		var ndefname, pairs;
		ndefname = msg[1]; // second item in 'msg' is ndefname
		pairs = msg.drop(2); // get rid of 1st and 2nd item in 'msg'
		msg[2].switch(
		\end,{Ndef(ndefname).end(msg[3]);"End %".postf(ndefname);},
		\play,{Ndef(ndefname).play;"Play %".postf(ndefname);},
		{ Ndef(ndefname).xset(*pairs); // * adds the items in the array, not the array itself!
		};
		);
	}).add;
*/
q.analogVals=0!6;
q.digitalVals = 0!6;

q.playername = r.myServer.asSymbol;
q.myOSCPath = "/arduinoVals/"++q.playername;

// put this into arduino func
r.send(\all, q.myOSCPath, (q.analogVals++q.digitalVals).asCompileString); // string or compilestring?

// listening to incoming Data
q.resp[\digitalVals] = OSCresponder(nil, q.myOSCPath, { |t, resp, msg|
	"path %, values: %\n".postf(msg[0], msg[1]);
	}).add;

q.resp[\setndef] = OSCresponder(nil, '/setndef', { |t, resp, msg|
		var ndefname, pairs;
		ndefname = msg[1]; // second item in 'msg' is ndefname
		pairs = msg.drop(2); // get rid of 1st and 2nd item in 'msg'
		msg[2].switch(
		\end,{Ndef(ndefname).end(msg[3]);"End %".postf(ndefname);},
		\play,{Ndef(ndefname).play;"Play %".postf(ndefname);},
		{ Ndef(ndefname).xset(*pairs); // * adds the items in the array, not the array itself!
		};
		);
	}).add;

)