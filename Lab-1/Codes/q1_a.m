syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);
T = 1;
t1 = -T/2;
t2 = T/2;
N = 5;
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
k = -N:1:N;

figure()
stem(k, F);
xlabel('k');
ylabel('a_k');
title('Fourier Series Coefficients');