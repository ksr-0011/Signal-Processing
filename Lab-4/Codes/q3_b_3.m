syms w;
Wc = pi/2;

X = piecewise((w<Wc)&(w>-Wc),1,0);
x = zeros(201,1);

for n = -100:100
    x(n+101) = int(X*exp(1j*w*n), w, -pi, pi);
    x(n+101) = (x(n+101))/2*pi;
end 

figure()
subplot(2,1,1)
stem(-100:100,real(x));
xlabel('n');
ylabel('real(x[n])');
title('Real part of Inverse DTFT for Wc = pi/2');
subplot(2,1,2)
stem(-100:100,imag(x));
xlabel('n');
ylabel('imag(x[n])');
title('Imag part of Inverse DTFT for Wc = pi/2');


