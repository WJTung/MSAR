function m4atowav(input, output)
addpath('./m4aread');
[y, fs] = m4aread(input);
audiowrite(output, y, fs);
