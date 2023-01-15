B = load("q2_2.mat");
A=B.x;
m = 3;

y = upsampler_zeroorder(A, m);

figure()
subplot(2,1,1)
stem(A);
xlabel('n');
ylabel('Input Signal');

subplot(2,1,2)
stem(y);
xlabel('n');
ylabel('Output Signal')
title('Output Upsamped Signal with zero order interpolation and m = 3');

