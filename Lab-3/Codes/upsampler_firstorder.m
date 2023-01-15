function [y] = upsampler_firstorder(A, m)
    p = length(A);
    p = p*m;
    y = zeros(p,1);
    
    for k = 1:length(A)
        y(m*k) = A(k);
    end

    for i = 1:m-1
        y(1+i) = (i*(y(m)-y(1)))/m;
    end    

    for i = m:p-m
        k = rem(i,m);
        if(k == 0)
            for j = 1:m-1
                y(i+j) = y(i) + (j*(y(i+m)-y(i)))/m;
            end
        end
    end   

            

    
end    
          