% Frågor: 
% * Uppvisar iterationerna kvadratisk konvergens? 
% Svar: Ja, som man kan se i utskriften disp(h)
%
% * Kan du uppskatta den asymptotiska felkonstanten för de två rötterna. Hur skattas felet? 
% Svar: f'(x)/2f''(x) för de x-värden som finns för rötterna
%
% * Ange en gräns för felet?
% Svar: Felet avgränsas till 10^-7. Då felet kommer vara <= abs(f / fp * x) så kommer 
% det i den här uppgiften att vara 10^-6. Men då talet kan vara lika med 10^-6 så väljer 
% vi istället 10^-7 som felgräns.


% funktionen
f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10*x.*exp(-x);
fp = @(x) 60 - 6 * (2*x + 1) * (x.^2 + x + 0.1).^5 / ((x+1).^6) + 6 * (x.^2 + x + 0.1).^6 / ((x+1).^7) + 10 * x * exp(-x) - 10 * exp(-x);
fb = @(x) 6 * (x^2 + x + 0.1)^4 / (x + 1)^6 * (-7 * (x^2 + x + 0.1)^2 / (x + 1)^2 + 12 * (2*x + 1) * (x^2 + x + 0.1) / (x + 1) - 2 * (x^2 + x + 0.1) - 5 * (2*x + 1)^2) + 10 * exp(-x) * (2 - x)

% funktionen deriveras numeriskt med central differens
% approxiamationssteget är 10^-3
hh = 1E-3;
fp = @(x) (f(x+hh) - f(x-hh))/(2*hh);

% itererar med newton-raphson far att hitta nollställe för funktionen
format compact
for x = [0.1, 2]
    h = 10;
    
    disp(['    h' '         x' '        f(x)'])
    % iterar tills forandringsvärdet (h) ar mindre an en miljontedel
    % relativt x
    while abs(h/x) > 1E-7,
        fval = f(x);
        fpval = fp(x);
        h = (fval/fpval);
        disp([h x fval])
        x = x-h;
    end
    x
end

felkonstant_2_e_8 = fb(2.0*1E-8)/(2 * fp(2.0*1E-8))
felkonstant_2_2224 = fb(2.2224)/(2 * fp(2.2224))
