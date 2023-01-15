syms t;

T = 4;
w = -5:0.1:5;

xt = piecewise((t>=-T)&(t<=T), 1, 0);

Y = continuousFT(t, xt, -T, T, w);

figure()
subplot(2,2,1)
plot(real(Y));
xlabel('t');
ylabel('Real(X(w))');
title('Real Part of Signal for T = 4');
subplot(2,2,2)
plot(imag(Y));
xlabel('t');
ylabel('Imag(X(w))');
title('Imaginary Part of Signal for T = 4');
subplot(2,2,3)
plot(abs(Y));
xlabel('t');
ylabel('abs(X(w))');
title('Absolute value of Signal for T = 4');
subplot(2,2,4)
plot(angle(Y));
xlabel('t');
ylabel('angle(X(w))');
title('Phase of Signal for T = 4');