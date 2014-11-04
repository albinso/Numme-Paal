function res = generalquadraticbezier(t, start, slut, yb)
xstart = start(1)
ystart = start(2)
xslut = slut(1)
yslut = slut(2)

t = t';

if(xslut ~= 0)
    firstTerm = (1-t/xslut);
else
    firstTerm = t;
end

if(xstart ~= 0)
    lastTerm = (1-t/xstart);
else
    lastTerm = t/xslut;
end

k = [(firstTerm).^2, 2.*(lastTerm).*(firstTerm), (lastTerm).^2];

p1 = [ystart];
p2 = [yslut];
b = [yb];

size(k)
size([p1' b' p2']')
res = k*[p1' b' p2']';
end
