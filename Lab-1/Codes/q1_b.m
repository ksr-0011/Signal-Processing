syms t;
T = 1;
T1 = T/4;
t1 = -T/2;
t2 = T/2;
N = 10;

xt = piecewise((t<T1)&(t>-T1), 1, 0); 
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
k = -N:1:N;

figure()
stem(k, F);
xlabel('k');
ylabel('C_k');
grid on;
title('Fourier Series Coefficients');