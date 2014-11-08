function res = f(u)
% res ska vara 0 n�r u �r r�tt funktion
x = u(1,:); % Alla x-v�rden
u = u(2,:); % Motsvarande v�rden f�r u(x)
N=length(x);
h = (x(end) - x(1)) / N;
G = @(ui, xi) -2.*ui - xi.*ui.*(ui-1).*h^2;

res = [0]; % vi vet vilka randv�rden u har
for i = 2:length(u)-1
    % f�r r�tt u ska detta bli [res; 0]
    res = [res; u(i-1) + u(i+1) + G(u(i), x(i))];
end
res = [res; 0]; % randv�rde igen
end

