function f = fordn3(x, y)
% * Funktionsbeskrivning
% Beräknar värdet av funktionen

% * Variabelbeskrivning
% x = definitionsmängden
% y = (u1, u2, u3)

f = [y(2) y(1)/9 - pi * y(1) * exp(x/3) * (2 * y(2) * sin(pi * x) + pi * y(1) * cos(pi * x)) pi * y(1)^2]';