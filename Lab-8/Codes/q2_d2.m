w0 = pi/4;
r0 = 0.9;
% Hz = b0*(1-exp(1j*w0)*(z^-1))*(1-exp(-1j*w0)*(z^-1))/(1-r0exp(1j*w0)*(z^-1))*(1-r0exp(-1j*w0)*(z^-1));
b0 = (1-r0*exp(1j*w0))*(1-r0*exp(-1j*w0))/(1-exp(1j*w0))*(1-exp(-1j*w0));
b1 = [1, -exp(1j*w0)];
b2 = [1, -exp(-1j*w0)];
b = b0*conv(b1,b2);
a1 = [1, -r0*exp(1j*w0)];
a2 = [1, -r0*exp(-1j*w0)];
a = conv(a1,a2);

fvtool(b,a);
