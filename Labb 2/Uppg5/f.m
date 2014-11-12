function G = f(z)
% * Funktionsbeskrivning
% 'G' ska vara 0 när z är rätt funktion

% * Variabelbeskrivning
% z = alla tal i ett intervall med en viss steglängd, dock ej randvärdena

global x h start stop

N = length(z);

% Då z inte innehåller randvärden så stoppas de in här.
u=[start; z; stop];

% Beräkningen av funktionen
G = (u(3:N+2) + u(1:N) - 2*u(2:N+1))/h^2 - x.^2.*u(2:N+1).*(u(2:N+1)-1);

end

