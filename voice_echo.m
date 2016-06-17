function voice_echo(filename, coefficient, delay)
[y, fs] = audioread(filename);
delay_sample = round(delay * fs);
a = [1, zeros(1, delay_sample - 1), -coefficient];
b = [1];
y_echo = filter(b, a, y);
sound(y_echo, fs);
new_filename = strcat('echo_', filename);
audiowrite(new_filename, y_echo, fs);
	
