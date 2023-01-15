N =5;
A = zeros(1,N);
for i = 1:N
    A(i) = 1/(i^2);
end

E4 = 329.628;
C4 = 261.63;
G4 = 400.00;
G3 = 196.00;

% Super Mario Tone
F_notes = [E4,E4,E4,C4,E4,G4,G3,E4,E4,E4,C4,E4,G4,G3,E4,E4,E4,C4,E4,G4,G3] ;
P = zeros(1,N);
fs = 10000;
td = 1;
td_notes = [0.15,0.3,0.3,0.15,0.3,0.45,0.3,0.15,0.3,0.3,0.15,0.3,0.45,0.3,0.15,0.3,0.3,0.15,0.3,0.45,0.3];
f0 =50;
adsr = [0.2,0.2,0.7,0.4,0.2,fs];

yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn);