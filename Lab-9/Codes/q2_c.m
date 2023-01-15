N =[10,15];
fs = 10000;
td = 1;
f0 =[100,150,200];
for i = 1:length(N)
    A = zeros(1,N(i));
    P = zeros(1,N(i));
    for k = 1:N(i)
        A(k) = 1/k;
    end
    for j = 1: length(f0)
        xn = harmonics(A,f0(j),P,td,fs);
        soundsc(xn);
        pause(1);
    end
    pause(2)
end