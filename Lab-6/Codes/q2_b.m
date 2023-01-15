Ts = 0.1;
t_samples = 0:Ts:2;

xt = cos(5*pi*t_samples) + sin(10*pi*t_samples);

figure()
stem(t_samples,xt);
xlabel('nTs');
ylabel('x(n)');

