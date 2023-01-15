function F = NonIdeal(A, w0_FS, G, a)
    n = length(A)/2;
    F = zeros(1, length(A));
    for k = 1:n
        F(k) = A(k)*G/(a+(1j)*(k-n-1)*w0_FS);
    end    
end