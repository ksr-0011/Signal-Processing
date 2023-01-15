p = 0.5;
b = [1, -1/p];
a = [1, -p];

figure()
zplane(b, a);

figure()
freqz(b, a, 1001, 'whole');

figure()
impz(b, a);