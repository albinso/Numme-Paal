t = [-4:0.1:12];
hold off;

endpoints = [];
for y=[0.2 0.6 1.0 1.4]
    [T, Y] = ode45(@delta, t, [-4 y]);
    plot(Y(:,1), Y(:,2))
    endpoints = [endpoints; Y(end,:,end)]; %Sätt in slutpunkterna i en vektor.
    hold on;
end
xlabel('X position')

% Hitta t så att kurvan med start y=0.2 har samma x som den med start y=1.4
% har vid t=12.
h = 1E-1;
targetx = endpoints(end,:,end)
t = 12;
dt = 10;
xy = endpoints(1,:);
currentx = xy(1);
currenty = xy(2);
i = 0
x = xy(1)
while dt > 1E-5 && i < 20
    [x, y] = ode45(f, [x y], [currentx currenty])
    dt = -t/x;
    t = t+dt;
    i = i+1
end

t


