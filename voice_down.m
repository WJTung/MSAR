audioread('origin.wav');
del = linspace(1.2, 0.4, round(1.25 * length(y)));
index = 1;
new_length = round(1.25 * length(y)) - 100;
for i = 1 : 1 : new_length
    y_down(i) = y(floor(index)) + (y(floor(index) + 1) - y(floor(index))) * (index - floor(index));
    index = index + del(i);
end
new_filename = 'down.wav';
audiowrite(new_filename, y_down, fs);
