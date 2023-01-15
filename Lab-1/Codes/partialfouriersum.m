function y = partialfouriersum (A, T, time_grid)
% Compute N based on the length of A
N = (length(A)-1)/2;
w = 2*pi/T;
y = zeros(size(time_grid));
% creating empty vector 
for k = -N:N
 y = y + A(k+N+1)*exp(1j*k*w*time_grid);
end
end