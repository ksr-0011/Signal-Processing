wo = 20000;
Am = 5;
wm = 100;

n = -10:1:10;

y = zeros(length(n),1);
xn = zeros(length(n),1);
pn = zeros(length(n),1);

for i = 1:length(n)
    pn(i) = cos(wo*n(i));
    xn(i) = Am*sin(wm*n(i));
    y(i) = xn(i)*pn(i);
end

figure()
stem(n, xn, 'red');
xlabel('n');
ylabel('Signals');
title('Message Signal in red and Modulated Signal in blue');

hold on
stem(n, y, 'blue');
