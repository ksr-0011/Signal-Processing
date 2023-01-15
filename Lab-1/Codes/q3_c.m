syms t;

N = 10;
T = 1;
T1 = 0.1;
t1 = -T1;
t2 = T1;
time_grid = -T/2:0.01:T/2;

xt = piecewise((t<T1)&(t>-T1), 1, 0); 
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
y = partialfouriersum (F, T, time_grid);

figure()
plot(time_grid, real(y), 'Blue');
hold on
fplot(real(xt), [-T/2, T/2], 'Green');
grid on;
xlabel('t');
title('Original xt (green) and Reconstructed y (blue) for N = 10');
ylabel('Value of signal')