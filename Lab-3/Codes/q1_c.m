B = load("q1.mat");
A = B.x;
k = length(A);
n = 5;

MA = zeros(length(A), 1);
y = MovingAverage(A,n);

figure()
subplot(2,1,1)
stem(1:k, A, 'red');
xlabel('n');
ylabel('Input Signal')

subplot(2,1,2)
stem(1:k, y, 'blue');
xlabel('n');
ylabel('Moving Average');