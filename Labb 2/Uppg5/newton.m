function res = newton(u)
%start = 2; stop = 4; N=3; n=N-1;

i = 0;
dxnorm = 10;

%u = [x u(x)]

% så länge normen är större än en tusendel samt mindre än 20 iterationer
% gjorts
while (dxnorm >= 1E-3) && i < 20
    %G = -2.*u - x.*u.*(u-1).*h^2;
    %size(G)
    %Gp = -2 - 2.*x.*u.*h^2 - x.*h^2;
    %size(u)
    %[start; u(1:n-1)]
    F = f(u) % Ber�knar f(u) som borde vara 0-v�rd
    jac = minjac(@f, u) %jacobian mumbo-jumbo
   
    % Standard newton-grejer
    dx = -jac\F
    dxnorm = norm(dx, inf);
    size(u(:,2))
    size(u(2)-dx)
    u(:,2) = u(:,2)+dx;
    i = i+1
end

res = u;
%res = [u(x(3)) - 2*u(x(2)) + start - 2^2 * u(2)*(u(2)-1) * h^2];
%for i = 2:length(x)-1
%    res = [res func(x(i), x(i+1), x(i-1))];
%end

%res = [res  stop - 2*u(x(i)) + u(i-1) - 2^2 * u(i)*(u(i)-1)*h^2];

end

