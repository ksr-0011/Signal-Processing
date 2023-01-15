A = [0.5,0.5];
P = [0,0];
fs = 10000;
td = 4;
F1 = [350,450];

xn = SineSum(A,F1,P, td, fs);
%xn = SineSum(A,F2,P,td,fs);
sound(xn);