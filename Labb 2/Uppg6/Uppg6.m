% u(t) vattenhastigheten i förbindelseledningen m/sek
% h(t) vattenhöjd i stigtanken m
% H fallhöjd från reservoar till ventil 30 m
% L förbindelseledningen längd 600 m
% d förbindelseledningen diameter 0.6 m
% A stigtankens area m2
% g tyngdaccelerationen 9.81 m/sek2
% fM friktionskoefficient 0.024

% För medelhastigheten u(t) gäller följande differentialekvation
% L(du/dt) = g(H − h) − 1/2*f_M * L/d * u*|u|

% Vidare gäller att inflödet vid punkt B är lika med utflödet från punkt B:
% π * d^2 / 4 * u = A(dh/dt) + Q_v
% B-inflöde = π * d^2 / 4 * u
% B-utflöde = A(dh/dt) + Q_v

% Flödet Qv genom ventilen under stängningsförloppet 0 ≤ t ≤ tc ges enligt
% Qv = k(1 − t/tc) * √(h − h^*)

% För ventilen gäller k=1.05 m2.5/s, h∗=20 m, tc = 5 sek.
% Beräkna h(t) så länge som något intressant pågår. Pröva med olika värden 
%   på A, A=1, 2, 4,10 m2.

% Börja med att bestämma h, u och Qv då ventilen är och har varit
% helt öppen en längre tid (jämvikt). Detta kan ni göra genom att anta
% att du/dt = 0 och dh/dt = 0 och succesivt beräkna h och u. Dessa
% beräkningar kan göras analytiskt. De två teknologerna Slarver Da och
% Fixarsig Fy har var för sig genomfört beräkningarna och kommit fram
% till följande resultat:

% I.
% u0 = sqrt(gH / (gC1 + C2))
% C1 = (πd^2 / 4k)^2
% h0 = h^* + C1 * gH / (gC1 + C2)
% C2 = 1/2 * f_M * L/d

% II.
% h0 = (gH + Ch^*) / (g + C)
% u0 = 4k * sqrt(h0 − h^*)/(πd^2)
% C = 1/2 * f_M *L/d * 16k^2 / π^2d^4

% Härled även du uttryck för h0 och u0. Har någon av teknologerna räknat 
% rätt? Låt datorn kontrollera startvärden för u och h genom att lösa
% differentialekvationsproblemet med beräknade startvärden vid t = −5.
% Hur skall lösningern se ut för −5 ≤ t ≤ 0? Låt ventilen börja stängas
% vid t = 0 och följ lösningen tillräckligt länge, så att ni åtminstone kan
% observera den maximala stighöjden. Observera att efter tc sekunder så
% är ventilen helt stängd, d.v.s.

% Qv = ksqrt(h − h^*), t ≤ 0
%       k(1 − t/tc) * sqrt(h − h^*), 0 ≤ t ≤ tc
%       0, t ≥ tc

% Redovisa grafer över h och u för de olika A-värden. Lägg gärna graferna
% i samma figur.

% -------------------------------

% u(t) - sambandet gäller
% L(du/dt) = g(H − h) − 1/2*f_M * L/d * u*|u|

% h(t)
H = 30
L = 600
d = 0.6
% A
g = 9.81
fM = 0.024
% Qv
k = 1.05
hstar = 20
tc = 5
% Bin = 3.14 * d.^2 / 4 * u
% But = A(dh/dt) + Q_v
