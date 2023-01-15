syms w;
Wc = pi/6;

N = 201;
nc = (N-1)/2;

n = 0:N-1;

x1n = cos(pi*n/16) + 0.25*sin(pi*n/16);
x2n = cos(pi*n/16) + 0.25*randn(1,201);

Hdn = (1/6)*sinc((1/6)*(n-nc));
wn_rec = ones(1,N);
Hn_rec = Hdn.*wn_rec;
wn_black = blackman(N);
Hn_blackman = Hdn.*wn_black';

y11n = conv(x1n, Hn_rec);
y12n = conv(x1n, Hn_blackman);
y21n = conv(x2n, Hn_rec);
y22n = conv(x2n, Hn_blackman);

figure()
subplot(3,2,1)
stem(x1n);
xlabel('n');
ylabel('x1[n]')
title('Original Signal x1[n]');
subplot(3,2,3)
stem(y11n);
xlabel('n');
ylabel('y1[n] rec')
title('y1[n] through rectangular window');
subplot(3,2,5)
stem(y12n);
xlabel('n');
ylabel('y1[n] blackman')
title('y1[n] through blackman window');
subplot(3,2,2)
stem(x2n);
xlabel('n');
ylabel('x2[n]')
title('Original Signal x2[n]');
subplot(3,2,4)
stem(y21n);
xlabel('n');
ylabel('y2[n] rec')
title('y2[n] through rectangular window');
subplot(3,2,6)
stem(y21n);
xlabel('n');
ylabel('y2[n] blackman')
title('y2[n] through blackman window');

