angle = pi/3;

figure() 

for r = 0 : 0.069 : 1
    % varying r in steps of 0.069
    b = [1, (-2)*cos(angle), 1];
    a = [1, (-2)*r*cos(angle), r*r];
    
    freqz(b,a,1001);
    title('Frequency Response at angle = pi/3')
    hold on
       
end