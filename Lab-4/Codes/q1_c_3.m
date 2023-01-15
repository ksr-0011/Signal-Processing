x1 = zeros(101,1);
x2 = zeros(101,1);

N0 = 1;
b = 0.99;
a = b;
for k = 1:101
    x1(k) = a^(k-1);
end 
a = -b;
for k = 1:101
    x2(k) = a^(k-1);
end 

w = -10:0.01:10;

X1 = DT_Fourier(x1, N0, w);
X2 = DT_Fourier(x2, N0, w);

figure()
subplot(2,2,1)
stem(x1);
xlabel('n');
ylabel('x1');
title('Input for a=b vs n for b = 0.99');
subplot(2,2,2)
stem(x2);
xlabel('n');
ylabel('x2');
title('Input for a=-b vs n');
subplot(2,2,3)
plot(w, abs(X1));
xlabel('w');
ylabel('abs(X)');
title('Magnitude vs w');
subplot(2,2,4)
plot(w, abs(X2));
xlabel('w');
ylabel('abs(X)');
title('Magnitude vs w');



