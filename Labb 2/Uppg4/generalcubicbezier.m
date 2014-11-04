function res = generalcubicbezier(t, start, slut, yb, yc)
xstart = start(1)
ystart = start(2)
xslut = slut(1)
yslut = slut(2)

t = t';
k = [(xslut-t).^3, 3.*(xstart-t).*(xslut-t).^2, 3.*(xstart-t).^2.*(xslut-t), (xstart-t).^3];

p1 = [ystart];
p2 = [yslut];
b = [yb];
c = [yc];

size(k)
size([p1' b' c' p2']')
res = k*[p1' b' c' p2']';
end
