function res = generalcubicbezier(t, start, slut, yb, yc)
xstart = start(1)
ystart = start(2)
xslut = slut(1)
yslut = slut(2)

t = t';
if(xslut ~= 0)
    firstTerm = (xslut-t)/xslut;
else
    firstTerm = -t;
end

if(xstart ~= 0)
    lastTerm = (xstart-t)/xstart;
else
    lastTerm = -t;
end

k = [(firstTerm).^3, 3.*(lastTerm).*(firstTerm).^2, 3.*(lastTerm).^2.*(firstTerm), (lastTerm).^3];

p1 = [ystart];
p2 = [yslut];
b = [yb];
c = [yc];

size(k)
size([p1' b' c' p2']')
res = k*[p1' b' c' p2']';
end
