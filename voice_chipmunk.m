wObj = myAudioRead('origin.wav');
opt = pitchShift('defaultOpt');
opt.pitchShiftAmount = 12;	% Amount for pitch shift (in semitones)
opt.method='wsola';		% Method for pitch shifting
wObj2=pitchShift(wObj, opt, 0);
% sound(wObj2.signal,wObj2.fs);
new_filename = 'chipmunk.wav';
audiowrite(new_filename, wObj2.signal, wObj2.fs);
