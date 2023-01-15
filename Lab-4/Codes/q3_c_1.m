syms w;
W1 = pi/8;
W2 = pi/4;

X = piecewise((w<=W2)&(w>=W1),1,0);
x = zeros(201,1);

for n = -100:100
    x(n+101) = int(X*exp(1j*w*n), w, -pi, pi);
    x(n+101) = (x(n+101))/2*pi;
end 

figure()
subplot(2,1,1)
stem(-100:100,real(x));
xlabel('n');
ylabel('Real(x[n])');
title('Real part of Inverse DTFT for band-pass signal with W1 = pi/8 and W2 = pi/4');
subplot(2,1,2)
stem(-100:100,imag(x));
xlabel('n');
ylabel('Imag(x[n])');
title('Imag part of Inverse DTFT for band-pass signal with W1 = pi/8 and W2 = pi/4');

