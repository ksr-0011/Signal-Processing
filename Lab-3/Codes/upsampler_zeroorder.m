function [y] = upsampler_zeroorder(A, m)
    l = length(A)*m;
    y = zeros(l,1);
    
    for k = 1:length(A)
        y(m*k) = A(k);
    end
    hold = y(1);
    for i = 1:l
        if(y(i)~=0)
            hold = y(i);
            continue
        end    
        if (y(i)==0)
            y(i) = hold;
        end 
    end    
end