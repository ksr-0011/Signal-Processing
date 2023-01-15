function xn = SineSum(A,F,P,td,fs)
t = 0:(1/fs):td;
L = length(A);
xn = zeros(size(t));
for k = 1:L
    xn = xn + A(k)*sin(2*pi*F(k)*t+P(k));
end
end