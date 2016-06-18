[y, fs] = audioread('origin.wav');
new_filename = 'chipmunk.wav';
audiowrite(new_filename, y, round(2 * fs));
