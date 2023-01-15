x = zeros(101,1);
x(48) = 1;
N0 = 51;
w = -10:0.01:10;

X = DT_Fourier(x, N0, w);

figure()
subplot(2,2,1)
plot(w, abs(X));
xlabel('w');
ylabel('abs(X)');
title('Magnitude vs w');
subplot(2,2,2)
plot(w, angle(X));
xlabel('w');
ylabel('angle(X)');
title('Phase vs w');
subplot(2,2,3)
plot(w, real(X));
xlabel('w');
ylabel('real(X)');
title('Real part of X vs w');
subplot(2,2,4)
plot(w, imag(X));
xlabel('w');
ylabel('imag(X)');
title('Imaginary part of X vs w');


