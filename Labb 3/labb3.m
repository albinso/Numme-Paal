% Låt startformationen för partikelpaketet vara en regelbunden 
% tjugohörning med centrum i (−4, 1) och radiellt avstånd till hörnen 0.6
% HOLY MOTHER OF THE GREATEST RAGNAROS!!!

% Beräkna arean av varje deformerad polygon. För en sluten polygon finns följande
% trapetsregelliknande areaformel:
% A = (x1y2 − x2y1 + x2y3 − x3y2 + · · · + xny1 − x1yn)/2
% IS THIS THE CONTINUATION OF THE MADNESS?!!!

% Gör om beräkningarna för en fyrtiohörning. Genomför även en 
% richardsonextrapolation på areavärdena med antagandet att areaformeln 
% har samma noggrannhets ordning som trapetsregeln. Fortsätt eventuellt 
% med en fördubbling av antalet hörn. Vilken slutsats kan dras om 
% partikelpaketets area under strömningen förbi cylindern?
% NOW I'M JUST ALL MAD...

% Utför även egna experiment med annan startform på partikelpaketet och 
% andra startpositioner i y-led.
% DET VAR DEN SISTA, ÅK NU!!!

R = 2;
t = 0;
ttolv = 12;
x = -4;
% => 
y = [0.2 0.6 1.0 1.4];

dxdt = 1 - R^2 * (x^2 - y^2) / (x^2 + y^2)^2;
dydt = -2*x*y*R^2 / (x^2 + y^2)^2;

[X,T]=ode45('dudx',[t,ttolv],y);

% För vilket värde på tc (t = ?) har den understa partikeln (den med lägst
% y-värde) kommit upp i samma x-position som med den högsta partikeln (den med
% högst y-värde) nått vid ttolv (t = 12).