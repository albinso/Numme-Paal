function res = newton(u)
% * Funktionsbeskrivning
% Newton-Raphson-metoden gjord på ett icke-linjärt ekvationssystem

% Initiering
global x;
global start;
global stop;
i = 0;
dunorm = 10;

% Itererar fram resultatet för NR
while (dunorm >= 1E-10) && i < 10
    F = f(u); % Beräknar f(u) som bör gå mot 0
    jac = minjac(@f, u); % jacobian-beräkning
   
    % Standard newton-grejer
    du = -jac\F;
    dunorm = norm(du, inf)
    u = u + du;
    i = i + 1;
end

res = u;

end

