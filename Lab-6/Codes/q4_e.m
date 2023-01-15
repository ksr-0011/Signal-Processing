syms t;
xt = sin(2*t)+cos(3*t);
T = 2*pi;
N = 5;
A = fourierCoeff(t, xt, 0, 2*pi, N);

wc = 2.5;
wo_FS = 1;
time_grid = -2*T:0.01:2*T;
X1 = myLPF(A, wo_FS, wc);
recon_sig = partialfouriersum(A, T, time_grid);
recon_sig_fil1 = partialfouriersum(X1, T, time_grid);


figure()
subplot(2,1,1)
plot(time_grid,recon_sig);
xlabel('t');
ylabel('x(t)');
title('Original Signal');
subplot(2,1,2)
plot(time_grid,recon_sig_fil1);
xlabel('t');
ylabel('y1(t)');
title('LP Filtered Signal with wc = 2.5, w0 = 1');


wc = 2.5;
wo_FS = 1;
time_grid = -2*T:0.01:2*T;
X1 = myHPF(A, wo_FS, wc);
recon_sig = partialfouriersum(A, T, time_grid);
recon_sig_fil1 = partialfouriersum(X1, T, time_grid);


figure()
subplot(2,1,1)
plot(time_grid,recon_sig);
xlabel('t');
ylabel('x(t)');
title('Original Signal');
subplot(2,1,2)
plot(time_grid,recon_sig_fil1);
xlabel('t');
ylabel('y1(t)');
title('HP Filtered Signal with wc = 2.5, w0 = 1');

G = 1;
a = 1;
time_grid = -2*T:0.01:2*T;
X1 = NonIdeal(A, wo_FS, G, a);
recon_sig = partialfouriersum(A, T, time_grid);
recon_sig_fil1 = partialfouriersum(X1, T, time_grid);

figure()
subplot(2,1,1)
plot(time_grid,recon_sig);
xlabel('t');
ylabel('x(t)');
title('Original Signal');
subplot(2,1,2)
plot(time_grid,recon_sig_fil1);
xlabel('t');
ylabel('y1(t)');
title('Non Ideal Filtered Signal with G = 1, a = 1');
