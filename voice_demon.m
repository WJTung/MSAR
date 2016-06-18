[y, fs] = audioread('origin.wav');
new_filename = 'demon.wav';
audiowrite(new_filename, y, round(0.75 * fs));
