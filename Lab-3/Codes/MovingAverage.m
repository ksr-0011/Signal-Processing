function [MA] = MovingAverage(A, n)

l = length(A);
sum = 0;
MA = zeros(l, 1);
B = A;
for i = 1:l
    sum = sum + A(i);
    B(i) = sum/5;
    MA(i) = B(i);
    if(i>n)
        MA(i) = B(i) - B(i-n);
    end 
end    

end