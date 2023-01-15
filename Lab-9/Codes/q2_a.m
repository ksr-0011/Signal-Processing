N =5;
A = zeros(1,N);
for i = 1:N
    A(i) = 1/i;
end

P = zeros(1,N);
fs = 10000;
td = 1;
f0 =50;
xn = harmonics(A,f0,P,td,fs);
soundsc(xn);