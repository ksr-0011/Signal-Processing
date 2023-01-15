load handel.mat

f0 = 1024;
duration= 73113;
w0 = 2*pi*f0;
r0 = 0.9

t = 0:1/Fs:(duration-1)/Fs;

noise = (sin(2*pi*f0*t))';
ynew = y + noise;

b0w = 1/(1-exp(1j*w0))*(1-exp(-1j*w0));
b1w = [1, -exp(1j*w0)];
b2w = [1, -exp(-1j*w0)];
aw = [1];
bw = b0w*conv(b1w,b2w);

b0b = (1-r0*exp(1j*w0))*(1-r0*exp(-1j*w0))/(1-exp(1j*w0))*(1-exp(-1j*w0));
b1b = [1, -exp(1j*w0)];
b2b = [1, -exp(-1j*w0)];
bb = b0w*conv(b1b,b2b);
a1b = [1, -r0*exp(1j*w0)];
a2b = [1, -r0*exp(-1j*w0)];
ab = conv(a1b,a2b);

yfilter1 = filter(bw, aw, ynew);
yfilter2 = filter(bb, ab, ynew);

figure()
subplot(2,2,1)
plot(y(1:100));
title('Original Signal');
subplot(2,2,2)
plot(ynew(1:100));
title('Noisy');
subplot(2,2,3)
plot(yfilter1(1:100));
title('Rectangular Filter');
subplot(2,2,4)
plot(yfilter2(1:100));
title('Blackman Filter');






