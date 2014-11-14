function [T, AllXY] = calcanddrawpoints( t, points, func )
% Returnerar en 3d-matris
AllXY = zeros(2, length(t), length(points));
i=1;
for point=points'
    [T, XY] = ode45(func, t, [point(1) point(2)]);
    AllXY(1:2, 1:length(t), i) = XY';
    i = i+1;
end
end

