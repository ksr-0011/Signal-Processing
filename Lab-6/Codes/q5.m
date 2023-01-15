Ts = 0.1;
t_samples = 0:Ts:2;
t_fine = 0:0.001:2;
n = 0:2/Ts;

xn = cos(5*pi*t_samples) + sin(10*pi*t_samples);
xt1 = interp1(t_samples, xn, t_fine, 'previous');
xt2 = interp1(t_samples, xn, t_fine, 'linear'); 
xr = sinc_recon(n, xn, Ts, t_fine);

figure()
subplot(2,2,1)
stem(t_samples, xn);
xlabel('t');
ylabel('xn');
title('Original Signal');
subplot(2,2,2)
plot(t_fine, xt1);
xlabel('t');
ylabel('xt1');
title('Zero-Order Interpolated Signal');
subplot(2,2,3)
plot(t_fine, xt2);
xlabel('t');
ylabel('xt2');
title('First-Order Interpolated Signal');
subplot(2,2,4)
plot(t_fine, xr);
xlabel('t');
ylabel('xt1');
title('Sinc Interpolated Signal');
