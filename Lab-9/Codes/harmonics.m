function xn = harmonics(A,f0,P,td,fs)
 F0 = f0*(1:length(A));
 xn = SineSum(A,F0,P,td,fs);
end