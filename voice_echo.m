coefficient = 0.72;
delay = 0.1;
[y, fs] = audioread('origin.wav');
delay_sample = round(delay * fs);
a = [1, zeros(1, delay_sample - 1), -coefficient];
b = [1];
y_echo = filter(b, a, y);
% sound(y_echo, fs);
new_filename = 'echo.wav';
audiowrite(new_filename, y_echo, fs);
	
