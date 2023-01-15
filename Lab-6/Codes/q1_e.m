syms t;

T = 1;
w = -5:0.1:5;

xt = piecewise((t>=-T)&(t<=0), t+1, (t<=T)&(t>=0), 1-t, 0);

Y = continuousFT(t, xt, -T, T, w);

figure()
subplot(2,2,1)
plot(real(Y));
xlabel('t');
ylabel('Real(X(w))');
title('Real Part of Signal');
subplot(2,2,2)
plot(imag(Y));
xlabel('t');
ylabel('Imag(X(w))');
title('Imaginary Part of Signal');
subplot(2,2,3)
plot(abs(Y));
xlabel('t');
ylabel('abs(X(w))');
title('Absolute value of Signal');
subplot(2,2,4)
plot(angle(Y));
xlabel('t');
ylabel('angle(X(w))');
title('Phase of Signal');

