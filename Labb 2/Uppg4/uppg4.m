t = [-1:0.05:3];
start = [0 5]
slut = [2 5]
y = generalquadraticbezier(t, start, slut, 0.81)
z = generalcubicbezier(t, start, slut, 0.81, 0.81)

hold on
plot(t,y)
plot(t,z)
hold off