i = 0;
dxnorm = 10;
x = [1 2]
format compact
f1 = @(x, y, z) sin(x) + y.^2 + log(z) - 3;
f2 = @(x, y, z) 3*x +    2.^y - z.^3;
f3 = @(x, y, z) x.^2 +    y.^2 + z.^3 - 6

elx = @(y, z) (z.^3 - 2.^y)/3;
delxy = @(y, z) (z.^3 - log(2)*2.^y)/3;
delxz = @(y, z) (3*z.^2 - 2.^y)/3;
f1n = @(y, z) f1(elx(y, z), y, z);
f3n = @(y, z) f3(elx(y, z), y, z);
df1ny = @(y, z) delxy(y, z)*cos(elx(y,z)) + 2*y;
df1nz = @(y, z) delxz(y, z)*cos(elx(y,z)) + 1/z;
df3ny = @(y, z) delxy(y, z)*2*elx(y, z) + 2*y;
df3nz = @(y, z) delxz(y, z)*2*elx(y, z) + 3*z.^2;
phi = @(y, z) (f1n(y, z)-3).^2 + (f3n(y, z)-6).^2

[X, Y] = meshgrid([-10:0.02:10], [0:0.01:10]);

disp([x(1) x(2)]);
i;
hold off
phival = phi(X, Y);
index=(phival>1); phival(index)=inf
% surfc(X, Y, phival)
t = [1:100]
surfc(X, Y ,phi(X, Y))
%surf(X, Y, zeros(size(phival)))
axis([-5 10 -5 9 0 0.9])
