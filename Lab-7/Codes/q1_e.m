syms t;
fo = 10;
Fs = 5000;
to = 1/fo;
ts = 1/Fs;
t1 = 0:ts:1;

xn = sin(2*pi*fo*t1);

a = 1;
max_error = zeros(1,8);

for B = 1:1:8
    y = quadratic_quant(xn,B,a);
    e = abs(xn-y);
    max_error(B) = max(e);
end
figure();
plot(1:8,max_error);
xlabel('B');
ylabel('max(|Error|');
title('Maximum Absolute Error vs B');
