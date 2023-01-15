w0 = pi/200;
m = 5;
h = zeros(1001,1);
h(1) = 1;
h(2) = -1;

x = zeros(1001,1);
s = zeros(1001,1);

for k = 1:1001
    s(k) = 5*sin(w0*(k-1));
    x(k) = s(k) + randn();
end 

y = conv(h, x, 'full');

w = -10:0.01:10;
Y = DT_Fourier(y, 1, w);
X = DT_Fourier(x, 1, w);

figure()
subplot(2,2,1)
stem(x);
xlabel('n')
ylabel('x[n]');
title('Noisy Signal');
subplot(2,2,2)
plot(abs(X));
xlabel('n');
ylabel('abs(X)');
title('DTFT of Noisy Signal');
subplot(2,2,3)
stem(y(1:1200));
xlabel('n')
ylabel('y[n]');
title('Filtered Signal');
subplot(2,2,4)
plot(abs(Y));
xlabel('n')
ylabel('abs(Y)');
title('DTFT of Filtered Signal');
