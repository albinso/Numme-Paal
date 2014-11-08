function res = generalcubicbezier(t, start, slut, b, c)
xstart = start(1)
ystart = start(2)
xslut = slut(1)
yslut = slut(2)

t = t';

k = [(1-t).^3, 3*(t).*(1-t).^2, 3*(t).^2.*(1-t), (t).^3];

p1 = [start];
p2 = [slut];



size(k)
res = k*[p1; b; c; p2];
end
