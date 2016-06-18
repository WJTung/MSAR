f1 = 400.0;
f2 = 450.0;
wObj=myAudioRead('origin.wav');
fs = wObj.fs;
for i = 1 : 1 : length(wObj.signal)
	wObj.signal(i) = wObj.signal(i) * sin(2 * pi * f1 * i / fs) * sin(2 * pi * f2 * i / fs) * 2;
end
opt = pitchShift('defaultOpt');
opt.pitchShiftAmount = 0;	% Amount for pitch shift (in semitones)
opt.method='wsola';		% Method for pitch shifting
wObj2=pitchShift(wObj, opt, 0);
% sound(wObj2.signal, wObj2.fs);
new_filename = 'robot.wav';
audiowrite(new_filename, wObj2.signal, wObj2.fs);
