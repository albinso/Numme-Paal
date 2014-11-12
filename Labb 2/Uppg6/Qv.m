function res = Qv(t, h)
% * Funktionsbeskrivning
% Returnerar värdet på QV (beroende på t)

% * Variabelbeskrivning
% t = definitionsmängden
% h = h(t)

% Globalisering av variabler
global hstar;
global tc;
global k;

% Sätter Qv
res = 0;
if t < 0
    res = k * sqrt(h - hstar);
end
if t >= 0 && t <= tc
    res = k*(1 - t/tc) * sqrt(h - hstar);
end

