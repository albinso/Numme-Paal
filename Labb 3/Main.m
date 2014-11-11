t = [-4:0.1:12];
hold off;

for y=[0.6 1.0 1.4 0.2]
    [X, Y] = ode45(@delta, t, [-4 y]);
    plot(Y(:,1), Y(:,2))
    hold on;
end
xlabel('X position')
endpoint = Y(end)
