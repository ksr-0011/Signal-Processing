b = [1];
a = [1, -0.5, 0.2, -0.1, 0.007, 0.14, 0.15];

figure()
freqz(b, a, 1001, 'whole');
title('Zeros and Poles');