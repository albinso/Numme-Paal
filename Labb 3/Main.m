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
xy = endpoints(1,:);
i = 0
while xy(1) < targetx(1)
    t = t+h;
    xy = xy + h*delta(t, xy)';
    i = i+1
end
xy(1)
t

[T, Y]= ode45(@delta, [12:0.1:16], [
