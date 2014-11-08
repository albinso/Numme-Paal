function res = generalquadraticbezier(t, start, slut, b)

t = t';
k = [(1-t).^2, 2.*(t).*(1-t), (t).^2];

p1 = [start];
p2 = [slut];

res = k*[p1; b; p2];
end
