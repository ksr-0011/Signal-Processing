function xr = sinc_recon(n, xn, Ts, t_fine)
    xr = zeros(size(t_fine));
    ws = 2*pi/Ts;
    wc = ws/2;
    for k = n
        xr = xr + xn(k+1).*sinc(wc*(t_fine-(k)*Ts));
    end   
end

