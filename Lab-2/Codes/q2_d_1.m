p = -0.8;
b = [1];
a = [1, p];

figure()
freqz(b, a, 1001, 'whole');

figure()
impz(b, a);
