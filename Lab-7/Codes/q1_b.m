syms t;
fo = 10;
Fs = 5000;
to = 1/fo;
ts = 1/Fs;
t1 = 0:ts:1;

xt = sin(2*pi*fo*t);

n = 0:Fs;
xn = zeros(size(t1));

for i = 1:length(t1)
    t = t1(i);
    xn(i) = eval(subs(xt));
    syms t;
end 
a = 1;
B = 4;
xq = quadratic_quant(xn,B,a);

error = abs(xn-xq);

figure()
subplot(3,1,1)
plot(xn)
xlabel('n');
ylabel('x[n]');
title('Sampled Signal');
subplot(3,1,2)
plot(xq)
xlabel('n');
ylabel('xq[n]');
title('Quantized');
subplot(3,1,3)
plot(error)
xlabel('n');
ylabel('|Error|');
title('Quantization Error');





