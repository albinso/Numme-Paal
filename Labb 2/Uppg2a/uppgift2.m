% y resp y' för x = 0
y = [1 -1/3]';

% Beräknar fram kurvorna
mopt = odeset('RelTol', 1.E-6);
[X, Y] = ode45(@fordn2, [0, 2.6], y);

% Plottar kurvorna (y och y')
hold on;
plot(X, Y(:,1)); % y
plot(X, Y(:,2)); % y'
