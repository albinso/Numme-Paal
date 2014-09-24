% a)
% f'(x) = 60 - 6 * (2x + 1) * 6 / (x + 1) ^ 7 * (x^2 + x + 0.1) ^ 5 - 10 *
% e^-x + 10 * x * e^-x

function kalle = f(x)
kalle = 60 - 6 * (2 * x + 1) * 6 / (x + 1) ^ 7 * (x^2 + x + 0.1) ^ 5 - 10 * exp(-x) + 10 * x * exp(-x)
f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10*x.*exp(-x);
hh = 1E-3;
fp = @(x) (f(x+hh) - f(x-hh))/(2*hh);