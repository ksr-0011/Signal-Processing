N =5;
A = zeros(1,N);
for i = 1:N
    A(i) = 1/(i^2);
end

F_notes = 50:5:100;
P = zeros(1,N);
fs = 10000;
td = 1;
td_notes = ones(1,length(F_notes));
f0 =50;
adsr = [0.2,0.2,0.7,0.4,0.2,fs];
% xn = harmonics(A,f0,P,td,fs);
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn);