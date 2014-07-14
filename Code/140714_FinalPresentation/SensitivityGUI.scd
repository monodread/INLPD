// Faders for sensitivity! 

(
q.recwindow = Window.new("Record Buf", Rect(5, 700, 150, 200))
		// onClose is fairly important
		// without it, closing the window could leave the record on
	.onClose_({ Ndef(\myrecbuf).stop });

q.butt = Button.new(q.recwindow, Rect(5, 5, 140, 40))
	.states_([["Click to record", Color.white], ["NOW recording", Color.black, Color.red]])
	.font_(Font.new("Helvetica", 18))
	.focusColor_(Color.red)
	.action_({ |button|
			if (button.value==1 ) {
				button.value.postln;
				Ndef(\myplaybuf).stop; //stop playback??
				Ndef(\myrecbuf).reset.play;
				Ndef(\myrecbuf).set(\trig, button.value);
				Task({
					5.do{|i| "% secs remain\n".postf(5-i); 1.wait;}; 
					"Recording ended".postln;
					Ndef(\myrecbuf).stop;
					q.butt.valueAction = 0;
					}).play(AppClock);
			} {
				"else".postln;
				Ndef(\myrecbuf).set(\trig, button.value);
				Ndef(\myrecbuf).stop;
				Ndef(\myplaybuf).play;
				}
	}); 