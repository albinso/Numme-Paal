hold on;

% Startgissning, ger ca 6 iterationer
p = @(xi)xi + 1.5;

xs = [1 : 0.005 : 3]';

% Gör variablerna globala så att de kan nås av alla andra filer
global x;
global start; global stop;
global h;


start = 2; stop = 4;
x = xs(2:end-1); % Ta bort randvärden

% Utför Newton-Raphsons-beräkningar
u = p(x)
h = (x(end)-x(1))/length(x);
n = newton(u);

% Ritar upp kurvan
plot(x, n');
