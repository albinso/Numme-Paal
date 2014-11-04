function res = bezier(t, yb, yc)
t = t';
k = [(1-t).^3, 3.*t.*(1-t).^2, 3.*t.^2.*(1-t), t.^3];
%p = [[0 0.5] [1 0]]'
p1 = [0.5];
p2 = [0];
%s = [[1.0 yb] [1.0 yc]]';
b = [yb];
c = [yc];
size(k)
size([p1' b' c' p2']')
res = k*[p1' b' c' p2']';
end

