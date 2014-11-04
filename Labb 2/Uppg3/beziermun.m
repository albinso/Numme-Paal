function res = beziermun(t, yb, yc)
t = t';
k = [(0.5+t).^3, 3.*(0.5-t).*(0.5+t).^2, 3.*(0.5-t).^2.*(0.5+t), (0.5-t).^3];
%p = [[0 0.5] [1 0]]'
p1 = [0.3];
p2 = [0.28];
%s = [[1.0 yb] [1.0 yc]]';
b = [yb];
c = [yc];
size(k)
size([p1' b' c' p2']')
res = k*[p1' b' c' p2']';
end

