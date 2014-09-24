f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10*x.*exp(-x);
hh = 1E-3;
fp = @(x) (f(x+hh) - f(x-hh))/(2*hh);
x = -5:5;
plot(x, f(x))
x = 2;
h = 10;

format compact
for i = 0.1:0.1:2
    x = i;
    h = 10;
    while abs(h) > abs(x)*1E-6,
        fval = f(x);
        fpval = fp(x);
        h = (fval/fpval);
        disp(h)
        % disp([x, fval, fpval h])
        x = x-h;
    end
    x
end

% CLOSE 'NUFF!