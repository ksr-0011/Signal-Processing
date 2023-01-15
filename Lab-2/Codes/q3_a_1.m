figure()
r = 0.1;
angle = pi/4;
b = [1, (-2)*cos(angle), 1];
a = [1, (-2)*r*cos(angle), r*r];
zplane(b, a);
title('r = 0.1, angle = pi/4');

figure()
r = 0.6;
angle = pi/3;
b = [1, (-2)*cos(angle), 1];
a = [1, (-2)*r*cos(angle), r*r];
zplane(b, a);
title('r = 0.6, angle = pi/3')

figure()
r = 0.8;
theta = 3*pi/2;
b = [1, (-2)*cos(angle), 1];
a = [1, (-2)*r*cos(angle), r*r];
zplane(b, a);
title('r = 0.8, angle = 3*pi/2')