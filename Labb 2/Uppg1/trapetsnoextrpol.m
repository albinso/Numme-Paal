function res = trapetsnoextrpol(a, b, step, symbol)
% = Funktionsförklaring:
% Trapetsregeln utan extrapolation.

% = Variabelförklaring:
% a = startvärde
% b = målvärde
% step = steglängd
% symbol = funktionen

% Trapetsregeln m h a iteration
i = a + step;
res = symbol(a)/2;
while(i < b)
    if(abs(i - b) < (1E-5)) % Felmarginalskontroll
        warning('Bad step length or precision error')
        break
    end
    res = res + symbol(i);
    i = i + step;
end

res = res + symbol(b)/2;
res = res * step;

end

