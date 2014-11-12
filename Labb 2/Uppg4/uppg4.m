% Funktionsparametern
t = [0 : 0.005 : 1];
axis equal

% Kurvor för att rita ett fint delta (eller nästan)
y = generalcubicbezier(t, [8 5], [20 20], [8 10], [9 20])
y2 = generalcubicbezier(t, [8 5], [20 20], [8 -15], [35, -10])
y3 = generalcubicbezier(t, [20 20], [24 30], [8 50], [30 35])

% Iterationsprocess för att måla upp deltat med kaligrafieffekt
% Den flyttar kurvarna en liten bit (avståndet anges i 'd')
d = 5E-2;
for k = 1:40
    off = k * d;
    plot(y(:,1) + off, y(:,2) + off)
    hold on;
    plot(y2(:,1) + off, y2(:,2) + off)
    plot(y3(:,1) + off, y3(:,2) + off)
end

plot(40, 0) % Expandera graf-fönstret (fulhack)

hold off

