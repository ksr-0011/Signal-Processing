A = [0.5,0.5];
P = [0,0];
fs = 10000;
td = 0.5;
F1 = [480,620];

b1 = SineSum(A,F1,P, td, fs);
z1 = SineSum(0,0,0, td, fs);
x2n = [b1,z1,b1,z1,b1,z1,b1,z1];
%xn = SineSum(A,F2,P,td,fs);
sound(x2n); 