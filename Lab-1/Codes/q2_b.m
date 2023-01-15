syms t
xt = 2*cos(2*pi*t) + cos(6*pi*t);
T = 1;
N = 5;
t1 = -T/2;
t2 = T/2;
time_grid = -T/2:0.01:T/2;

A = fourierCoeff(t,xt,T,t1,t2,N);

y = partialfouriersum (A, T, time_grid);

figure()
plot(time_grid, real(y), 'Blue');
hold on
fplot(real(xt), [-T/2, T/2], 'Green');
xlabel('t');
title('Original xt (green) and Reconstructed y (blue)');
ylabel('Value of signal')