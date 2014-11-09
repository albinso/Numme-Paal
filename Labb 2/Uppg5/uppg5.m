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
%p = @(x)x + 1;
%xs = [1:3];


n = newton([1 2 3; 1 15 4]')
n;
%p(n);
%f([xs; p(xs)])
plot([1:3], n');

