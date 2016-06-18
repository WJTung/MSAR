[y,fs] = audioread('origin.wav');
ok_len = length(y);
t = (1:ok_len)/ok_len;
for i = 1:(ok_len/4)
    z(i,1) = y(i) * 10;
    z(i,2) = y(i) / 10;
end
for i = (ok_len/4)+1:(ok_len/2)
    z(i,1) = y(i) / 10;
    z(i,2) = y(i) * 10;
end
for i = (ok_len/2)+1:(ok_len/4*3)
    z(i,1) = y(i) * 10;
    z(i,2) = y(i) / 10;
end
for i = (ok_len/4*3)+1:(ok_len)
    z(i,1) = y(i) / 10;
    z(i,2) = y(i) * 10;
end
% sound(z,fs);
new_filename = 'around.wav';
audiowrite(new_filename, z, fs);
