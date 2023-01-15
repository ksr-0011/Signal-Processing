syms w;
Wc = pi/6;

N = 51;
nc = (N-1)/2;

n = 0:50;
Hdn = (1/6)*sinc((1/6)*(n-nc));
wn = blackman(N);
Hn = Hdn.*wn';

Hw = fft(Hn, 1001);
Hw = fftshift(Hw);

maghw = 20*log10(abs(Hw)/max(abs(Hw)));

figure()
subplot(3,1,1)
stem(Hn);
xlabel('n')
ylabel('h[n]')
title('Filter Coefficients');
subplot(3,1,2)
plot(-pi:pi/500:pi,maghw);
ylim([-100,10]);
xlabel('w')
ylabel('Mag in dB')
title('DFTF Magnitude Plot');
subplot(3,1,3)
plot(-pi:pi/500:pi,angle(Hw));
xlabel('w')
ylabel('Phase(Hw)')
title('DFTF Phase Plot');
sgtitle('Blackman Window')
