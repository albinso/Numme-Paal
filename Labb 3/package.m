function res = package(x, y, r, n)

org_angle = 2*pi/n;
res = [];
for i=[1:n]
    angle = org_angle*i;
    i
    res = [res; x+cos(angle)*r y+sin(angle)*r];
end
res