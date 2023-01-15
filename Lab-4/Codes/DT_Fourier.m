function X = DT_Fourier(x,N0,w)

l = length(x);
X = 0;

for i = 1:l
    X = X + x(i)*exp(-1j*w*(i-N0));
end