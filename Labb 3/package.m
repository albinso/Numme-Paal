function res = package(x, y, r, n)
global uppg;
% Generates a package of particles based around (x, y)
org_angle = 2*pi/n;
res = zeros(n, 2);
for i=[1:n]
    angle = org_angle*i;
    if uppg == 3
        res(i, :) = [x+cos(angle)*r y+sin(angle)*r]; % Function for point coordinates
    end
    if uppg == 4
        res(i, :) = [x+cos(angle)*r y+sin(angle)*r/(i/2)];
    end
end
