y = [1 -1/3]';
mopt = odeset('RelTol', 1.E-6);
[X, Y] = ode45(@fordn2, [0, 2.6], y);
plot(X, Y(:,1));
