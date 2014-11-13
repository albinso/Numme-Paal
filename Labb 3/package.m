function res = package(x, y, r, n)
% Generates a package of particles based around (x, y)
org_angle = 2*pi/n;
res = zeros(n, 2);
for i=[1:n]
    angle = org_angle*i;
    res(i, :) = [x+cos(angle)*r y+sin(angle)*r/(i/2)]; % Function for point coordinates
end
