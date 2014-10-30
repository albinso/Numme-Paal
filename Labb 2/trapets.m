function res = trapets(a, b, step, symbol)
% Very clever function to calculate value of integral.
% Once managed to approximate 14 numbers!

res = trapetsnoextrpol(a, b, step, symbol);
double = trapetsnoextrpol(a, b, step*2, symbol);
res
res = res - (double - res)/3;