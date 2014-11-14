odefun=@(t,x) -x;

p = odeset('Events', @evtfun);

[T, X] = ode45(odefun, [1:20], [34], p)
[T2, X2] = ode45(odefun, [1:20], [34])
plot(T2, X2)
hold on
plot(T, X, 'O')


