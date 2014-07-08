// filters to try and add:
(
q.filters = (
	\distortion: {|in, dry=0.0, dist = 1| var abs, excess; abs = in.abs; dist=dist.reciprocal.clip(0,1.0); excess = (abs-0.1).max(0.0).min(dist)/dist; (in*dry)+(excess*(sin(excess*2pi*5)*0.5-0.5)).softclip; },

	\choruscompress: {|in| var source = in; var chorus;
	chorus= Splay.ar(Array.fill(4,{
		var maxdelaytime= rrand(0.005,0.02);
		DelayC.ar(source[0], maxdelaytime, LFNoise1.kr(Rand(0.1,0.6), 0.25*maxdelaytime, 0.75*maxdelaytime) )
	})); chorus = Compander.ar(4*(source + chorus),source,0.4,1,4);
	chorus },
	\chorus: { |in| Mix.fill(7, { var maxdelaytime= rrand(0.005,0.02); DelayC.ar(in, maxdelaytime, LFNoise1.kr( Rand(4.5,10.5), 0.25, 0.75) * maxdelaytime	)})},

	\delay: {|in, dt=0.1, dcy=1| CombC.ar(in,dt,dt,dcy)},
	\comb: {|in, dt=0.1, dcy=1| CombC.ar(in,dt,dt*LFNoise0.kr(dt,0.1,0.102).lag(dt),dcy)},
	\delay1: {|in, delay=0.25, dcy=2| delay=LFNoise2.kr(delay,delay/3,delay); CombC.ar(in,delay,delay,dcy)},
	\delay2: {|in| var delay=DelayC.ar(in[0].distort,t.tempo/2,t.tempo/2); delay},
	\delay4: {|in| var delay=DelayC.ar(in[0].distort,t.tempo/2,t.tempo/2); delay},
	\delay3: {|in, dt=0.1, dcy=1| CombC.ar(in,dt,t.tempo/3,dcy)},
	\delay6: {|in, dt=0.1, dcy=1| CombC.ar(in,dt,t.tempo/6,dcy)},
	\delay9: {|in, dt=0.1, dcy=1| CombC.ar(in,dt,t.tempo/9,dcy)},

	\pitchshift: { |in, freq = 1, pitch = 2| var fx = { |n| PitchShift.ar(PitchShift.ar(in[0], 2.9, LFNoise1.kr(freq).range(0, n-1), 0.01, 0.05), 1.9, pitch % 4 , 0.01, 0.05)}!4; Mix.new(fx)},

	\gverb: { |in, room=50, earlyRef=(-9), tail=(-12), amp=0.5| GVerb.ar(BPeakEQ.ar(in[0], 4000.0, 0.5, -6),
		roomsize: room, earlyreflevel: earlyRef.dbamp, taillevel: tail.dbamp, mul: amp)},

	\hpf: { |in, freq = 3000| HPF.ar(in * (freq / 500).sqrt, freq)},
	\hpf6K: { |in, freq = 6000| HPF.ar(in * (freq / 500).sqrt, freq)},
	\lpf: { |in, freq = 200, rq=0.8| BLowPass.ar(in, freq, rq)},

	\krush: { |in, bits = 4, downsamp = 8| in = in.round(0.5 ** bits); Latch.ar(in, Impulse.ar(SampleRate.ir / downsamp.max(2)))},
	\noizy: { |in, noizy = 0.5| in = in * GrayNoise.ar(noizy, 1 - noizy)},
	\noizy2: { |in, rate=3| var noizy=LFNoise0.kr(rate).range(0, 1).squared;in=in*GrayNoise.ar(noizy, 1 - noizy)},
	\adcverb: { |in, revTime = 3, drift = 0.5, rate = 0.5| AdCVerb.ar(in*0.5, revTime, combScale: LFDNoise3.kr(rate, drift.clip2(0.9), 1))},
	\tanh: { |in, noizy = 0.5| OnePole.ar((in * 10).tanh * 0.3, 0.5)},
	\wah: { |in, rate = 2, depth = 0.5, gain = 3| (Ringz.ar(in, VarSaw.kr(2, 0, 0.1, depth).lag(0.1).exprange(200, 5000), 0.003) * gain).tanh.lag(0.0003) / gain.sqrt},
	\strobe: { |in, freq=8, width=0.5| in * LFPulse.kr(freq, 0, width)},
	\strobe3: { |in, freq=8, width=0.5| in * LFPulse.kr(t.tempo * 3, 0, width)},
	\strobe16: { |in, freq=8, width=0.5| in * LFPulse.kr(t.tempo * 8, 0, width)},
	\lfosaw: { |in,freq=1| in * LFSaw.kr(freq*t.tempo,0,0.5,0.5)},
	\lfosaw3: { |in,freq=1| in * LFSaw.kr(freq*t.tempo * 2/3,0,0.5,0.5)},
	\lfosin: { |in,freq=1| in * SinOsc.kr(freq*t.tempo*0.5,pi/2,0.5,0.5)},
	\lfosin3: { |in,freq=1| in * SinOsc.kr(freq*t.tempo*2/3,pi/2,0.5,0.5)},

	\bpf: { arg in, bpfreq=700; BPF.ar(in * 5, bpfreq, 0.1) },
	\combL: { arg in, dlt=0.5; CombL.ar(LPF.ar(in * LFNoise1.kr(0.1).max(0), 800), dlt, dlt) + in.reverse},
	\allpassN: { arg in, lpfreq=400;
		var x; x = in; 5.do { x = AllpassN.ar(x, 0.18, {0.06.rand} ! 2 + 0.06, 8) };
						LPF.ar(x + in, lpfreq) + (LFNoise1.kr(0.2) * in) }

);


)