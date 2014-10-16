format compact
f1 = @(x, y, z) sin(x) + y.^2 + log(z) - 3;
f2 = @(x, y, z) 3*x +    2.^y - z.^3;
f3 = @(x, y, z) x.^2 +    y.^2 + z.^3 - 6;

% Derivator med avseende på y eller z

df1x = @(x) cos(x);
df1y = @(y) 2*y;
df1z = @(z) 1/z;

df2x = @(x) 3;
df2y = @(y) log(2)*2.^y;
df2z = @(z) -3*z.^2;

df3x = @(x) 2*x;
df3y = @(y) 2*y;
df3z = @(z) 3*z.^2;

i = 0;
dtnorm = 10;
ys = [1.5 -1.4 2.0 -2.5];
zs = [1.5 1.5 0.8 0.05];
xs = (zs.^3 - 2.^ys)/3
result = [];
for n = 1:4
    t = [xs(n) ys(n) zs(n)];
     % Dålig konvergens kräver högt tak för i
     dtnorm = 10;
     i = 0;
    while dtnorm > 1E-6 & i < 20,
        x = t(1);
        y = t(2);
        z = t(3);
        f = [f1(x, y, z);
             f2(x, y, z);
             f3(x, y, z)];
        J = [df1x(x) df1y(y) df1z(z);
             df2x(x) df2y(y) df2z(z);
             df3x(x) df3y(y) df3z(z)];
        dt = -J\f;
        t = t+dt';
        dtnorm = norm(dt, Inf); % Felvektorns längd
        i = i+1;
        disp([f1(x, y, z) - f1(t(1), t(2), t(3))])
    end
    result = [result; t];
    i
end
disp(['    x         y         z'])
disp([result])
for i = [1:4]
    f1(result(i), result(i+4), result(i+8))
end



