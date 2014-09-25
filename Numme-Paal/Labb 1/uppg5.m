f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10*x.*exp(-x);
hh = 1E-3;
fp = @(x) (f(x+hh) - f(x-hh))/(2*hh);

format compact
for x = [0.1, 2]
    h = 10;
    disp(['    h' '         x' '        f(x)'])
    while abs(h/x) > 1E-7,
        fval = f(x);
        fpval = fp(x);
        h = (fval/fpval);
        disp([h x fval])
        x = x-h;
    end
    x
end

% CLOSE 'NUFF!