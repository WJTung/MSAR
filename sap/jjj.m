[y, fs, nbits]=wavread('�@�¿�b�g����.wav');
sound(y, fs);
z=flipud(y);
z(z>=0)=1-z(z>=0);
z(z<0)=-1-z(z<0);
sound(z, fs);
zz=flipud(z);
zz(zz>=0)=1-zz(zz>=0);
zz(zz<0)=-1-zz(zz<0);
isequal(y, zz);