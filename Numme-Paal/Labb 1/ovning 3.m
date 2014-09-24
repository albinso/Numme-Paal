% function kalle = f(x)
% kalle = 60 - 6 * (2 * x + 1) * 6 / (x + 1) ^ 7 * (x^2 + x + 0.1).^ 5 - 10 * exp(-x) + 10 * x * exp(-x)
f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10 * x *exp(-x);
% fp = @(x) (f(x+hh) - f(x-hh))/(2*hh);
fpc = @(x, hh) (f(x+hh) - f(x-hh))/(2*hh);
fpf = @(x, hh) (f(x+hh) - f(x))/(hh);

reps = 7;
x = 3;
hh_start = 1;

hh = hh_start;
for i = 1:reps
    fpc(x, hh);
    hh = hh / 10;
end
f_prim_central = fpc(2, hh)

hh = hh_start;
for i = 1:reps
    fpf(x, hh);
    hh = hh / 10;
end
f_prim_front = fpf(2, hh)
