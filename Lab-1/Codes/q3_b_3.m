T = 20;
T1 = 2;
t1 = -T1;
t2 = T1;
N = 10*T;
xt = piecewise((t<T1)&(t>-T1), 1, 0); 

F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
k = -N:1:N;

F = F*T;

figure()
stem(k, F);
xlabel('k');
ylabel('T*a_k');
grid on;
title('Fourier Coeff for square wave, scaled by T (T = 20)');
