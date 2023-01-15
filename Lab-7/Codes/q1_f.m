syms t;
fo = 10;
Fs = 5000;
to = 1/fo;
ts = 1/Fs;
t1 = 0:ts:1;

xn = sin(2*pi*fo*t1);
xn1 = xn.^2;

a = 1;
sqnr = zeros(1,8);

for B = 1:1:8
    y = quadratic_quant(xn,B,a);
    e = abs(xn-y);
    e = e.^2;
    sqnr(B) = sum(xn1) /sum(e);   
end

figure();
plot(1:8,sqnr);

