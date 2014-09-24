% a), b)

f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10 * x *exp(-x);
fp = @(x) 60 - 6 * (2 * x + 1) * 6 / (x + 1) ^ 7 * (x^2 + x + 0.1).^ 5 - 10 * exp(-x) + 10 * x * exp(-x);
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


% c)
hh = 10^-6

f_prim_0_2 = fp(0.2)
f_prim_central_0_2 = fpc(0.2, hh)
f_prim_front_0_2 = fpf(0.2, hh)

f_prim_1 = fp(1) % får ett avvikande värde
f_prim_central_1 = fpc(1, hh)
f_prim_front_1 = fpf(1, hh)


% d) Studera felet i diﬀerensapproximation av derivatan för de två formlerna i b.
% Tabellera felet i respektive formel för steglängderna h enligt Matlabsatsen
% for h=[1.E-3 1.E-4 1.E-5 1.E-6 1.E-7 1.E-8 1.E-9 1.E-10 1.E-11 1.E-12 1.E-13]
%  Rita i ett loglog-diagram (loglog). Förklara dina resultat!

for h=[1.E-3 1.E-4 1.E-5 1.E-6 1.E-7 1.E-8 1.E-9 1.E-10 1.E-11 1.E-12 1.E-13]
    f_prim_central_1 = fpc(1, hh)
    f_prim_front_1 = fpf(1, hh)
end    
