function res = newton(u)
%start = 2; stop = 4; N=3; n=N-1;

global x; global start; global stop;
i = 0;
dunorm = 10;

while (dunorm >= 1E-10) && i < 10
    F = f(u); % Beräknar f(u) som borde vara 0
    jac = minjac(@f, u); %jacobian mumbo-jumbo
   
    % Standard newton-grejer
    du = -jac\F;
    dunorm = norm(du, inf)
    u = u+du;
    i = i+1;
end
i
res = u;

end

