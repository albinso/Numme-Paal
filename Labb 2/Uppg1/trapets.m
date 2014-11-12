function res = trapets(a, b, step, symbol)
% Funktionsförklaring:
% Beräknar två värden med trapetsregeln och gör sedan Simpsson
% extrapolation på detta.

res = trapetsnoextrpol(a, b, step, symbol);
double = trapetsnoextrpol(a, b, step*2, symbol);
res = res - (double - res)/3;