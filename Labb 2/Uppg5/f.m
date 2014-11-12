
function G = f(z)
% res ska vara 0 n�r u �r r�tt funktion
global x h start stop
N=length(z);

% z inneh�ller inte randv�rden, stoppa in dem h�r.
u=[start; z; stop];

% Den magiska koden som fixar allt
G = (u(3:N+2) + u(1:N) - 2*u(2:N+1))/h^2 - x.*u(2:N+1).*(u(2:N+1)-1);


end

