y = [1 -1/3 0]';
mopt = odeset('RelTol', 1.E-6);
[X, Y] = ode45(@fordn3, [0, 2.6], y);
plot(X, Y(:,1));
hold on;
plot(X, Y(:,2));
plot(X, Y(:,3));
Y(end)
% Yo, calle g�r det b�ttre.
% u3 �r rotationsvolymen av u2
