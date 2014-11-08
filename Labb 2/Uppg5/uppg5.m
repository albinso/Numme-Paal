% Skriv upp differensapproximationer för differentialekvationen i de N inre punkterna. 
% Skriv ekvationerna f(u) = 0

% Som kontroll är det bra att på papper i detalj ställa upp problemet
% med N=3 och även rita upp diskretiseringspunkterna.
% Ingen matris skall ställas upp eller användas!

% Lös f(u) = 0
% med Newton iteration och Jakobianmatris beräknad med rutinen minjac
% från kursbiblioteket. Hur gissar ni startvärden? Hur många iterationer
% behövs? Gör beräkningar med olika N-väden och uppskatta diskretiseringsfelet med hjälp av dessa beräkningar

% Funktionen:
% d^2u / dx^2 − x^2u(u − 1) = 0, u(1) = 2, u(3) = 4

%-----------------------------------------------------
% Initiation
%-----------------------------------------------------
hold on;
% 1 ≤ x ≤ 3 delat i N+1 lika delintervall, h.
a = 1;
b = 3;
N = 1;
h = (b - a) / (N + 1)

xs = [a ; h ; b]; % [1 : 3]

%-----------------------------------------------------
% Funktionsdelen
%-----------------------------------------------------

p = @(x)x + 1; % returns x+1

%t = f(p, xs); % idk?

n = newton(p, xs) % newton raphson -> idk

%p(n); 
%f(p, n);

plot(xs, xs);
