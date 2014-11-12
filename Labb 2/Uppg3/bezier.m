function res = bezier(t, yb, yc)
% * Funktionsbeskrivning
% Ritar en bezierkurva utifrån styrpunkterna
 
% * Variabelbeskrivning
% t = funktionsvariabel
% yb = styrpunkt B
% yc = styrpunkt c

t = t';

% Bezierkurvans funktion
k = [(1-t).^3, 3.*t.*(1-t).^2, 3.*t.^2.*(1-t), t.^3];

% Start och slutpunkt för kurvan
p1 = [0.5];
p2 = [0];

% Beräknar kurvan
res = k*[p1' yb' yc' p2']';
end

