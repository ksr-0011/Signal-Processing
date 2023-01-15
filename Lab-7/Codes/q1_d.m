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
xq1 = quadratic_quant(xn,B,a);
a = 1;
B = 3;
xq2 = quadratic_quant(xn,B,a);

error1 = abs(xn-xq1);
error2 = abs(xn-xq2);

figure()
subplot(2,1,1)
histogram(error1, 15);
xlabel('|Error|');
ylabel('Frequency');
title('Quantization Error for B = 4');
subplot(2,1,2)
histogram(error2, 15);
xlabel('|Error|');
ylabel('Frequency');
title('Quantization Error for B = 3');



