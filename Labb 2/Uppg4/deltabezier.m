function res = deltabezier(t, start, slut, yb)
xstart = start(1)
ystart = start(2)
xslut = slut(1)
yslut = slut(2)

t = t';
if(t ~= 0)
    firstTerm = (xslut-t)/2;
    lastTerm = (xstart-t)/2;
else
    firstTerm = xslut;
    lastTerm = xstart;
end

k = [(firstTerm).^2, 2.*(lastTerm).*(firstTerm), (lastTerm).^2];

p1 = [ystart];
p2 = [yslut];
b = [yb];

size(k)
size([p1' b' p2']')
res = k*[p1' b' p2']';
end
