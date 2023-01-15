w0 = pi/200;

h = zeros(1001,1);
for k = 1:5
    h(k) = 1/5;
end  
x = zeros(1001,1);
s = zeros(1001,1);

for k = 1:1001
    s(k) = 5*sin(w0*(k-1));
    x(k) = s(k) + randn();
end 

s1 = conv(h, x, 'full');

h = zeros(1001,1);
for k = 1:21
    h(k) = 1/21;
end  
x = zeros(1001,1);
s = zeros(1001,1);

for k = 1:1001
    s(k) = 5*sin(w0*(k-1));
    x(k) = s(k) + randn();
end 

s2 = conv(h, x, 'full');

h = zeros(1001,1);
for k = 1:51
    h(k) = 1/51;
end  
x = zeros(1001,1);
s = zeros(1001,1);

for k = 1:1001
    s(k) = 5*sin(w0*(k-1));
    x(k) = s(k) + randn();
end 

s3 = conv(h, x, 'full');


figure()
subplot(2,2,1)
stem(1:1001,s,'blue');
hold on
stem(1:1001,x,'green');
xlabel('n');
ylabel('s[n] and x[n]');
title('s[n](in blue) and x[n](in green)');
subplot(2,2,2)
stem(s1);
hold on
stem(s);
xlabel('n');
ylabel('y[n]');
title('s[n](blue) and y[n](orange) for m = 5');
subplot(2,2,3)
stem(s2);
hold on
stem(s);
xlabel('n');
ylabel('y[n]');
title('s[n](blue) and y[n](orange) for m = 21');
subplot(2,2,4)
stem(s3);
hold on
stem(s);
xlabel('n');
ylabel('y[n]');
title('s[n](blue) and y[n](orange) for m = 51');

