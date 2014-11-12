function res = generalcubicbezier(t, start, slut, b, c)
% * Funktionsbeskrivning
% En kubisk bezierkurva

% * Variabelbeskrivning
% t = funktionsparameter
% start = vektor med x- och y-värde för startpunkten
% slut = vektor med x- och y-värde för slutpunkten
% b = styrpunkt B
% c = styrpunkt C

% Bezierkurvans funktion
k = [(1-t).^3, 3*(t).*(1-t).^2, 3*(t).^2.*(1-t), (t).^3];

% beräknar bezierkurvan
res = k*[start; b; c; slut];
end
