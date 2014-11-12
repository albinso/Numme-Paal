t = [-4:0.1:12];
hold off;

endpoints = [];
for y=[0.2 0.6 1.0 1.4]
    [T, Y] = ode45(@delta, t, [-4 y]);
   % plot(Y(:,1), Y(:,2))
    endpoints = [endpoints; Y(end,:,end)]; %Sätt in slutpunkterna i en vektor.
    hold on;
end
xlabel('X position')

points = package(-4, 1, 0.6, 1);
plot(points(:,1), points(:,2), 'O')
for point=points'
    [T, XY] = ode45(@delta, t, [point(1) point(2)]);
    plot(XY(:,1), XY(:,2))
end

points = package(-4, 1, 0.6, 40);
area = polygonarea(points(:,1), points(:,2))
new_points = [];
for point=points'
    [T, XY] = ode45(@delta, t, [point(1) point(2)]);
    XY;
    new_points = [new_points; [XY(end,1) XY(end,2)]];
end
new_points;
area = polygonarea(new_points(:,1), new_points(:,2))


% Hitta t så att kurvan med start y=0.2 har samma x som den med start y=1.4
% har vid t=12.

    




