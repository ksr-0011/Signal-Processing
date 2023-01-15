syms t;
xt = piecewise((t>=-1)&(t<=0), t+1, (t<=1)&(t>0), 1-t, 0);
t_fine = -10:0.001:10;
fplot(xt);

Ts1 = 0.5;
Ts2 = 0.2;
Ts3 = 0.1;
Ts4 = 0.05;

t1 = -1:Ts1:1;
t2 = -1:Ts2:1;
t3 = -1:Ts3:1;
t4 = -1:Ts4:1;

n1 = 0:(2/Ts1);
n2 = 0:(2/Ts2);
n3 = 0:(2/Ts3);
n4 = 0:(2/Ts4);

x1n = zeros(size(t1));
x2n = zeros(size(t2));
x3n = zeros(size(t3));
x4n = zeros(size(t4));

for i = 1:length(t1)
    t = t1(i);
    x1n(i) = eval(subs(xt));
    syms t;
end    
for i = 1:length(t2)
    t = t2(i);
    x2n(i) = eval(subs(xt));
    syms t;
end    
for i = 1:length(t3)
    t = t3(i);
    x3n(i) = eval(subs(xt));
    syms t;
end    
for i = 1:length(t4)
    t = t4(i);
    x4n(i) = eval(subs(xt));
    syms t;
end    

x1r = sinc_recon(n1, x1n, Ts1, t_fine);
x2r = sinc_recon(n2, x2n, Ts2, t_fine);
x3r = sinc_recon(n3, x3n, Ts3, t_fine);
x4r = sinc_recon(n4, x4n, Ts4, t_fine);

figure()
subplot(2,2,1)
stem(t1, x1n, 'red');
hold on
plot(t_fine-1, x1r, 'blue');
xlabel('t');
ylabel('x1n(red) and x1r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.1');

subplot(2,2,2)
stem(t2, x2n, 'red');
hold on
plot(t_fine-1, x2r, 'blue');
xlabel('t');
ylabel('x2n(red) and x2r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.2');

subplot(2,2,3)
stem(t3, x3n, 'red');
hold on
plot(t_fine-1, x3r, 'blue');
xlabel('t');
ylabel('x3n(red) and x3r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.3');

subplot(2,2,4)
plot(t_fine-1, x4r, 'blue');
hold on
stem(t4, x4n, 'red');
xlabel('t');
ylabel('x4n(red) and x4r(blue)');
title('Sampled(red) and reconstructed(blue) signal for Ts = 0.4');





