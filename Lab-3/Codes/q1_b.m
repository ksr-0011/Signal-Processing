A = zeros(50,1);
for i = 26:50
    A(i) = 1;
end    
n = 5;

MA = zeros(length(A), 1);
y = MovingAverage(A,n);

k = 1:50;

figure()
subplot(2,1,1)
stem(k, A);
xlabel('n');
ylabel('Shifted u[n]');

subplot(2,1,2)
stem(k, y);
xlabel('n');
ylabel('Output');

