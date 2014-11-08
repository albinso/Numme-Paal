function res = f(u, x)
N=length(x);
h = (x(end) - x(1)) / N;
G = @(ui, xi) -2.*ui - xi.*ui.*(ui-1).*h^2; % xi*(ui^2 - ui)*h^2
%Gp = @(ui, xi) -2 - 2.*xi.*ui.*h^2 - xi.*h^2;
start = 2;
stop = 4;
res = [0];
for i = 2:length(u)-1
    res = [res; u(i-1) + u(i+1) + G(u(i), x(i))];
end
res = [res; 0];
end
