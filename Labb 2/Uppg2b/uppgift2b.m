% u1 (eg y), u2 (eg y') och u3 (pi*u1^2) vid x = 0
y = [1 -1/3 0]';

% Beräknar fram kurvorna
mopt = odeset('RelTol', 1.E-6);
[X, Y] = ode45(@fordn3, [0, 2.6], y);

% Plottar kurvorna
plot(X, Y(:,1));
hold on;
plot(X, Y(:,2));
plot(X, Y(:,3));

% Skriver ut det sista elementet för Y (slutvärdet för u3)
Y(end)