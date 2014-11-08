% Detta är ett 'M'

t = [0:0.005:1];


start = [3 8];
slut = [40 7];
y = generalquadraticbezier(t, [5 5], [20 20], [9 20])
y2 = generalquadraticbezier(t, [5 5], [20 20], [9, -10])
y3 = generalcubicbezier(t, [20 20], [24 29], [21 30], [23 32])

d = 5E-3;
for k=1:40
    off = k*d;
    plot(y(:,1)+off, y(:,2)+off)
    hold on;
    plot(y2(:,1)+off, y2(:,2)+off)
    plot(y3(:,1)+off, y3(:,2)+off)
end
plot(10, 9, 'O')
plot(30, 6, 'O')



hold off

