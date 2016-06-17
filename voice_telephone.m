function voice_telephone(filename)
filter_order = 5;
min_f = 400;
max_f = 3400;
[y, fs] = audioread(filename);
% eliminate frequencies > 3400
[b, a] = butter(filter_order, max_f / (fs / 2), 'low');
y1 = filter(b, a, y);
% eliminate frequencies > 400
[b, a] = butter(filter_order, min_f / (fs / 2), 'high');
y2 = filter(b, a, y1);

y_telephone = y2;
sound(y_telephone, fs);
new_filename = strcat('telephone_', filename);
audiowrite(new_filename, y_telephone, fs);
