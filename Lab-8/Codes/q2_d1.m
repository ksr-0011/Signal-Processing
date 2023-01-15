w0 = pi/4;
% Hz = b0*(1-exp(1j*w0)*(z^-1))*(1-exp(-1j*w0)*(z^-1));
b0 = 1/(1-exp(1j*w0))*(1-exp(-1j*w0));
b1 = [1, -exp(1j*w0)];
b2 = [1, -exp(-1j*w0)];
a = [1];
b = b0*conv(b1,b2);

fvtool(b,a);
