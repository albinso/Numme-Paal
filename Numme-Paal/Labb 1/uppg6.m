i = 0;
dxnorm = 10;
x = 0.5;
y = 1;
z = 2;
format compact
while dxnorm > abs(x)*1E-6 & i < 10,
        f = [sin(x) + y.^2 + log(z) - 3;
             3*x +    2.^y - z.^3;
             x.^2 +    y.^2 + z.^3 - 6]
        J = [cos(x)  2*y    (1/(x*log(10)));
             3       log(2)*2^y   (-3*z);
             2*x     2*y           3*z]
        dx = -J\f;
        x = x+dx(1);
        y = y+dx(2);
        z = z+dx(3);
        dxnorm = norm(dx, Inf);
        i = i+1
end
x, y, z
i
