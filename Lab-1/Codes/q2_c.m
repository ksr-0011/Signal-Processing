syms t
xt = 2*cos(2*pi*t) + cos(6*pi*t);
T = 1;
N = 5;
t1 = -T/2;
t2 = T/2;
time_grid = -T/2:0.01:T/2;

A = fourierCoeff(t,xt,T,t1,t2,N);

y = partialfouriersum (A, T, time_grid);

sum_of_error_squares = 0;
max_abs_error = 0;
for k = 1:length(time_grid)
    t = time_grid(k);
    error = abs(real(y(k))-eval(subs(xt)));
    sum_of_error_squares = sum_of_error_squares + error*error ;
    if(error > max_abs_error)
        max_abs_error = error;
    end    
end 

p = length(time_grid);
rms_error = sqrt(sum_of_error_squares/p);

disp('Maximum Absolute Error is:');
disp(max_abs_error);


disp('RMS Error is:');
disp(rms_error);