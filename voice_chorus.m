wObj = myAudioRead('origin.wav');
opt = pitchShift('defaultOpt');
opt.pitchShiftAmount= -8;   % Amount for pitch shift (in semitones)
opt.method = 'wsola';       % Method for pitch shifting
wObj2 = pitchShift(wObj, opt, 0);
opt.pitchShiftAmount= 8;
wObj3 = pitchShift(wObj, opt, 0);
for i = 0 : length(wObj2.signal)
    if(i > 800)
        wObj2.signal(i)  = wObj2.signal(i) + wObj.signal(i - 800);
    end
    if(i > 1600)
        wObj2.signal(i) = wObj2.signal(i) + wObj3.signal(i - 1600);
    end
end
new_filename = 'chorus.wav';
audiowrite(new_filename, wObj2.signal, wObj2.fs);
