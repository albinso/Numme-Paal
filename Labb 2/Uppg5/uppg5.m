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
p = @(xi)xi + 1.25;
xs = [1:0.005:3]';




global x;
global start; global stop;
global h;
start=2; stop=4;
x = xs(2:end-1);

u = p(x)
h = (x(end)-x(1))/length(x);
n = newton(u)
n;
%p(n);
%f([xs; p(xs)])
plot(xs, n');

