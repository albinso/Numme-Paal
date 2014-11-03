function res = trapetsnoextrpol(a, b, step, symbol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i = a+step;
res = symbol(a)/2;
while(i <= b)
    res = res+symbol(i);
    i = i + step;
    if(abs(i-b) < 1e-5) % Handles rounding errors on the steps.
        warning('Bad step length or precision error')
        break
    end
end
res = res+symbol(b)/2;
res = res*step;

end
