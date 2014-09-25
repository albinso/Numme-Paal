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

i = 0;
dtnorm = 10;
ys = [2.5 -2 2.2 -3]
zs = [1.8 1.9 0.3 0]
result = []

for i = 1:4
    t = [ys(i) zs(i)]
    while dtnorm > abs(x)*1E-6 & i < 20,
        y = t(1)
        z = t(2)
        f = [f1n(y,z);
             f3n(y,z)]
        J = [df1ny(y,z) df1nz(y,z);
             df3ny(y,z) df3nz(y,z)]
        dt = -J\f
        t = t+dt';
        dtnorm = norm(dt, Inf)
        i = i+1
    end
    result = [result t]
end

i


