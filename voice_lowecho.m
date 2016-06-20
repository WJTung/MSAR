wObj = myAudioRead('origin.wav');
opt = pitchShift('defaultOpt');
opt.pitchShiftAmount = -9;  % Amount for pitch shift (in semitones)
opt.method='wsola';     % Method for pitch shifting
wObj2=pitchShift(wObj, opt, 0);
y = wObj2.signal;
fs = wObj2.fs;
coefficient = 0.72;
delay = 0.1;
delay_sample = round(delay * fs);
a = [1, zeros(1, delay_sample - 1), -coefficient];
b = [1];
y_lowecho = filter(b, a, y);
new_filename = 'lowecho.wav';
audiowrite(new_filename, y_lowecho, round(0.88*fs));
