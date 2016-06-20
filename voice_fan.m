wObj = myAudioRead('origin.wav');
y = wObj.signal;
fs = wObj.fs;
opt = pitchShift('defaultOpt');
opt.pitchShiftAmount = -3;  % Amount for pitch shift (in semitones)
opt.method='wsola';     % Method for pitch shifting
wObj2=pitchShift(wObj, opt, 0);
y_low = wObj2.signal;
phase = 0;
for i = 1 : 1 : length(y)
    y_fan(i) = y(i) * sin(phase) + 0.8 * y_low(i) * (1 - sin(phase));
    phase = phase + (200 / fs);
end
new_filename = 'fan.wav';
audiowrite(new_filename, y_fan, fs);

