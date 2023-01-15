function[N, ROC, C, S] = roc_cs(p)

if((length(p) == 1) && (p(1) == 0))
    N = 1;
    ROC = [0, inf];
    C = 1;
    S = 1;
    return
end    
p = abs(p);
p = unique(p);
p = sort(p);

if(p(1)==0)
    p(1) = [];
end 
N = length(p) + 1;

ROC = zeros(N, 2);
ROC(1, 2) = p(1);

if(N>=2)
    for k = 2:N-1
        ROC(k, 1) = p(k-1);
        ROC(k, 2) = p(k);        
    end 
end    
ROC(N, 1) = p(N-1);
ROC(N, 2) = inf;

C = zeros(N, 1);
S = zeros(N, 1);

C(N,1) = 1;

for mm = 1:N
    if((1>ROC(mm,1)) && (1<ROC(mm,2)))
        S(mm,1) = 1;
    end    
end    

end


    
   

