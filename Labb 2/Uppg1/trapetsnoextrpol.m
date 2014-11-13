function res = trapetsnoextrpol(a, b, step, f)
% = Funktionsförklaring:
% Trapetsregeln utan extrapolation.

% = Variabelförklaring:
% a = startvärde
% b = målvärde
% step = steglängd
% symbol = funktionen

% Trapetsregeln
vals = f([a:step:b]);
res = vals(1)/2;
n = length(vals);
res = res + sum(vals(2:end-1));

res = res + vals(end)/2;
res = res * step;

end

