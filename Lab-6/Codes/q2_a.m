t_fine = 0:0.001:2;

xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);

figure()
plot(t_fine,xt);
xlabel('t');
ylabel('x(t)');

