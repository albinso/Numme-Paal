% Tar följande parametrar:
%  u = random funktion???
%  x = parameter till u
function res = newton(u, x)
start = 2; % usefull?
stop = 4; % usefull?
N = 3;
n = N - 1;

h = 1;
x = [1 : h : N]; %[1:N]'*h;

i = 0;
dxnorm = 10;

uu = u(x)

% så länge normen är större än en tusendel samt mindre än 20 iterationer
% gjorts
while (dxnorm >= 1E-3) && i < 20
    F = f(uu, x)
    
    jac = minjac(@f, uu)
   
    dx = -jac\F
    dxnorm = norm(dx, inf);
    uu = uu - dx;
    i = i + 1

    %G = -2.*u - x.*u.*(u-1).*h^2;
    %size(G)
    %Gp = -2 - 2.*x.*u.*h^2 - x.*h^2;
    %size(u)
    %[start; u(1:n-1)]
    
end

res = uu;
%res = [u(x(3)) - 2*u(x(2)) + start - 2^2 * u(2)*(u(2)-1) * h^2];
%for i = 2:length(x)-1
%    res = [res func(x(i), x(i+1), x(i-1))];
%end

%res = [res  stop - 2*u(x(i)) + u(i-1) - 2^2 * u(i)*(u(i)-1)*h^2];

end

