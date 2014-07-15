// Faders for sensitivity! 

(
q.trigSetWin=Window.new("Trigger Sensitivity", Rect(100, 50, 320, 300)).front;
q.trigSetWin.view.decorator=FlowLayout(q.trigSetWin.view.bounds);
q.trigSetWin.view.decorator.gap=2@2;

Spec.add(\thresh, [0.001,6.0, \exp]);

7.do{ |i| var label="Threshold_"++i++"   "; var color=Color.rand; 
	var func={|slider| var thresh=("trig"++i++"thresh").asSymbol; q.put(thresh, slider.value); "New threshold for Trigger % : % \n".postf(i, slider.value); 
	};
	var slidername=("slider"++"trig"++i++"thresh").asSymbol; var slider;

// last fader sets all: 
	if(i==6) {label="Set all Thresh"; color=Color.red; func = {|slider| 6.do{|j| var thresh=("trig"++j++"thresh").asSymbol; var slidername=("slider"++"trig"++j++"thresh").asSymbol;
		q.put(thresh, slider.value); "Set threshold for ALL! : % \n".postf(slider.value); q.at(slidername).value_(slider.value); }
	} };
	
	slider = EZSlider(q.trigSetWin, 300@30,label, \thresh, func, labelWidth: 70, unitWidth: 0,initVal:0.6, numberWidth:40, labelHeight:70, layout:\horz)
	.setColors(Color.black,Color.white, sliderBackground: color, knobColor: Color.black, numNormalColor: Color.black)
	.font_(Font("Helvetica",11))
	.visible_(true);
	q.put(slidername, slider);

};

// add a button to start and stop the sound.
q.startButton = Button(q.trigSetWin, 120 @ 40).font_(Font("Helvetica-Bold",20));
q.startButton.states = [
	["See Values", Color.white, Color.green(0.7)],
	["Hide Values", Color.white, Color.red(0.7)]
];
q.startButton.action = {|view|
		if (view.value == 1) {
			q.verbose = true;
		} {
			q.verbose = false;
		};
};
)