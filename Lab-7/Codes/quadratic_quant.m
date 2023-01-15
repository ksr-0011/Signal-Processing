function y = quadratic_quant(x,B,a)
r = zeros(1,(2^(B-1))+1);
n = length(r);
for i = 1:n
    r(i) = ((i-1)/(2^(B-1)));
    r(i) = (r(i))*(r(i));
    r(i) = r(i)*a;
end 

y = zeros(1,length(x));

for i = 1:length(x)
   for j = 1:n-1
       if( (x(i)>=r(j)) && (x(i)<r(j+1)) )
           y(i) = (r(j+1)+r(j))/2;
           break;
       
       elseif( (x(i)<-r(j)) && (x(i)>=-r(j+1)) )
           y(i) = -(r(j)+r(j+1))/2;
           break;
       elseif(x(i) == r(n))
           y(i) = (r(n) + r(n-1))/2;
           break;
       elseif(x(i) == -r(n))   
           y(i) = -(r(n-1) + r(n))/2;
       end      
   end
end

end


