
function G = f(z)
% res ska vara 0 när u är rätt funktion
global x h start stop
N=length(z);

u=[start; z; stop];

%G=( y(3:N+2)-2*y(2:N+1)+y(1:N) )/h2- ...
%sqrt(x.^2+y(2:N+1).^2 +( ( y(3:N+2)-y(1:N) )/hh ).^2);
G = (u(3:N+2) + u(1:N) - 2*u(2:N+1))/h^2 - x.*u(2:N+1).*(u(2:N+1)-1);


end

