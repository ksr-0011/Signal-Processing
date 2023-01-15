syms t;
xt = cos(5*pi*t);
t_fine = 0:0.001:2;

Ts1 = 0.1;
Ts2 = 0.2;
Ts3 = 0.3;
Ts4 = 0.4;

t1 = 0:Ts1:2;
t2 = 0:Ts2:2;
t3 = 0:Ts3:2;
t4 = 0:Ts4:2;

n1 = 0:(2/Ts1);
n2 = 0:(2/Ts2);
n3 = 0:(2/Ts3);
n4 = 0:(2/Ts4);

x1n = cos(5*pi*t1);
x2n = cos(5*pi*t2);
x3n = cos(5*pi*t3);
x4n = cos(5*pi*t4);

x1r = sinc_recon(n1, x1n, Ts1, t_fine);
x2r = sinc_recon(n2, x2n, Ts2, t_fine);
x3r = sinc_recon(n3, x3n, Ts3, t_fine);
x4r = sinc_recon(n4, x4n, Ts4, t_fine);

figure()
subplot(2,2,1)
stem(t1, x1n, 'red');
hold on
plot(t_fine, x1r, 'blue');
xlabel('t');
ylabel('x1n(red) and x1r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.1');

subplot(2,2,2)
stem(t2, x2n, 'red');
hold on
plot(t_fine, x2r, 'blue');
xlabel('t');
ylabel('x2n(red) and x2r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.2');

subplot(2,2,3)
stem(t3, x3n, 'red');
hold on
plot(t_fine, x3r, 'blue');
xlabel('t');
ylabel('x3n(red) and x3r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.3');

subplot(2,2,4)
plot(t_fine, x4r, 'blue');
hold on
stem(t4, x4n, 'red');
xlabel('t');
ylabel('x4n(red) and x4r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.4');




