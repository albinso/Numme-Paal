function f = fordn2(x, y)
% * Funktionsbeskrivning
% Ger värdet på funktionen utifrån givna parametrar

% * Variabelbeskrivning
% x = definitionsmängsvariabel
% y = (y, y')

% Beräknar funktionen
f = [y(2) y(1)/9 - pi * y(1) * exp(x/3) * (2 * y(2) * sin(pi * x) + pi * y(1) * cos(pi * x))]';

