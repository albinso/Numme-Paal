function [T, AllXY] = calcanddrawpoints( t, points, func )
% L�ser differentialekvationen func f�r ett givet intervall t och startpunkter points.
AllXY = zeros(2, length(t), length(points));
i=1;
for point=points'
    [T, XY] = ode45(func, t, [point(1) point(2)]);
    AllXY(1:2, 1:length(t), i) = XY';
    i = i+1;
end
end

