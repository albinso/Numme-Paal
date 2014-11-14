function parea = polygonarea(x, y)
global globalvariabledonotuse;

% Omvandlar x och y till kolumnvektorer (1*1*n matriser tidigare)
x = x(:);
y = y(:);

x = [x(end); x; x(1)];
y = [y(end); y; y(1)];

% Beräknar polygonens area
parea = abs(sum(x(2:end-1).*(y(3:end)-y(1:end-2))))/2;

% Ritar var 40:de polygon
if mod(globalvariabledonotuse, 40) == 0
    plot(x, y, 'r')
end
globalvariabledonotuse = globalvariabledonotuse + 1;