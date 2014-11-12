function parea = polygonarea(x, y)
n = length(x);
x = [x(end); x; x(1)];
y = [y(end); y; y(1)];
parea = x(n)*y(1);
sub = y(n)*x(1);
for i=[2:n];
    parea = parea + abs(x(i)*y(i+1));
    sub = sub + y(i)*x(i+1);
end
parea = abs(parea) - abs(sub);
parea = parea/2;

