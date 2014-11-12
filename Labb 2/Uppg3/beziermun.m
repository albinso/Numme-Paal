function res = beziermun(t, yb, yc)
% * Funktionsbeskrivning
% Ritar en "beziermun" utifrån styrpunkterna

% * Variabelbeskrivning
% t = funktionsvariabel
% yb = styrpunkt B
% yc = styrpunkt c

% Bezierkurvans funktion
k = [(0.5+t).^3, 3.*(0.5-t).*(0.5+t).^2, 3.*(0.5-t).^2.*(0.5+t), (0.5-t).^3];

% Start och slutpunkt för kurvan
p1 = [0.3];
p2 = [0.28];

% Beräknar kurvan
res = k * [p1' yb' yc' p2']';
end

