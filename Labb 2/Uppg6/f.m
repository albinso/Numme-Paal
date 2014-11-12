function res = f(t, y)
% * Funktionsbeskrivning
% Beräknar formeln nedan utifrån parametrarna y och t

% * Variabelbeskrivning
% t = definitionsmängden
% y = (h(t), u(t))

% Globaliserar följande variabler
global A;
global L;
global C1;
global g;
global H;
global fM;

% Beräknar den givna formeln
res = [(sqrt(C1) * y(2) - Qv(t, y(1)))/A (g * (H - y(1)) - fM * L * y(2) * abs(y(2)))/L]';
end

