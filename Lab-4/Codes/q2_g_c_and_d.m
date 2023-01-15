w0 = pi/200;

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

figure()
subplot(2,1,1)
stem(1:1001,s,'blue');
hold on
stem(1:1001,x,'green');
xlabel('n');
ylabel('s[n] and x[n]');
title('s[n](in blue) and x[n](in green)');
subplot(2,1,2)
stem(y(1:1200));
hold on
stem(s);
xlabel('n');
ylabel('y[n]');
title('s[n](orange) and y[n](blue)');
