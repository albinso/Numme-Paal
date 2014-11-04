function res = generalcubicbezier(t, start, slut, yb)
xstart = start(1)
ystart = start(2)
xslut = slut(1)
yslut = slut(2)

t = t';
k = [(xslut-t).^2, 2.*(xstart-t).*(xslut-t), (xstart-t).^2];

p1 = [ystart];
p2 = [yslut];
b = [yb];

size(k)
size([p1' b' p2']')
res = k*[p1' b' p2']';
end
