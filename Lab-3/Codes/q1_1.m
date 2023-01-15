A = zeros(100,1);

A(1) = 1;

n = 5;

MA = zeros(length(A), 1);
y = MovingAverage(A,n);

B = load("q1.mat");
A = B.x;

c = conv(A,y);
k = 1:100;

figure()
subplot(2,1,1)
stem(y(1:100), 'red');
xlabel('n');
ylabel('h[n]');
title('Impulse Response of System');

subplot(2,1,2)
stem(c(1:110));
xlabel('n');
ylabel('y[n]');
title('MA system response through convolution');



