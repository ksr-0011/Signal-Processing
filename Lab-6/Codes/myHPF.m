function B = myHPF(A, wo_FS, wc)
    B = A;
    N = (length(A)-1)/2;
    for n = -N:N
        if(((-wc<n*(wo_FS))&&(wc>n*(wo_FS))))
            B(n+N+1) = 0;
        end 
    end    
end