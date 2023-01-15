syms t;

xt = piecewise((t<1/4)&(t>0), t, (t>-1/4)&(t<0), -t, 0); 
T = 1;
t1 = -T/2;
t2 = T/2;
N = 20;
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

k = -N:1:N;

figure()
stem(k, F);
xlabel('k');
ylabel('C_k');
grid on;
title('Fourier Series Coefficients for x1(t)');