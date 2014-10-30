phi = [0:0.01:pi/2];
x = cos(phi).^3;
y = 1.5*sin(phi)-sin(phi).^3;

plot(x, y)
hold on;
plot(-x, y)
hold on;

h = 10;
format compact
phi = acos(0.6^(1/3)); % Phi when x=0.6
while abs(h) > 1.0e-10*abs(x),
    f = 1.5*sin(phi)-sin(phi)^3 -0.64;
    fp = -3*cos(phi)*(-0.5+sin(phi)^2);
    h = f/fp;
    disp([phi, f, fp h]);
    phi = phi-h;
end
x = cos(phi)^3;
plot(x, 0.64, '*')
plot(-x, 0.64, '*')

h = 10;
phi = acos(0.1^(1/3)); % Phi when x=0.1
while abs(h) > 1.0e-10*abs(phi),
    f = 1.5*sin(phi)-sin(phi)^3 -0.64;
    fp = -3*cos(phi)*(-0.5+sin(phi)^2);
    h = f/fp;
    phi = phi-h;
end
x = cos(phi)^3;
plot(x, 0.64, '*')
plot(-x, 0.64, '*')
hold off