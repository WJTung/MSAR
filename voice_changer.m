function voice_changer(filename)
addpath('./sap');
system('rm -rf *.wav');
m4a2wav(filename, 'origin.wav');
voice_telephone;
voice_around;
voice_chipmunk;
voice_demon;
voice_echo;
voice_robot;
voice_chorus;
voice_fan;
voice_highecho;
voice_lowecho;
voice_down;
