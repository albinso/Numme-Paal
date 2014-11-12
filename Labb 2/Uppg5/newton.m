function res = newton(u)
%start = 2; stop = 4; N=3; n=N-1;

global x; global start; global stop;
i = 0;
dunorm = 10;

%u = [x u(x)]

% så länge normen är större än en tusendel samt mindre än 20 iterationer
% gjorts
while (dunorm >= 1E-10) && i < 10
    %G = -2.*u - x.*u.*(u-1).*h^2;
    %size(G)
    %Gp = -2 - 2.*x.*u.*h^2 - x.*h^2;
    %size(u)
    %[start; u(1:n-1)]
    F = f(u); % Ber�knar f(u) som borde vara 0-vektorn
    jac = minjac(@f, u); %jacobian mumbo-jumbo
   
    % Standard newton-grejer
    du = -jac\F;
    dunorm = norm(du, inf)
    u = u+du;
    i = i+1;
end
i
x = [1;x;3]; u = [start; u; stop];
res = u;
%res = [u(x(3)) - 2*u(x(2)) + start - 2^2 * u(2)*(u(2)-1) * h^2];
%for i = 2:length(x)-1
%    res = [res func(x(i), x(i+1), x(i-1))];
%end

%res = [res  stop - 2*u(x(i)) + u(i-1) - 2^2 * u(i)*(u(i)-1)*h^2];

end

