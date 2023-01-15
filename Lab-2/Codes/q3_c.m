r = 0.95;

figure() 

for angle = 0 : pi/69 : pi
    % varying angle in steps of pi/69
    b = [1, (-2)*cos(angle), 1];
    a = [1, (-2)*r*cos(angle), r*r];
    
    freqz(b,a,1001);
    title('Frequency Response at r = 0.95')
    hold on
       
end