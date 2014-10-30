

format compact
f1 = @(x, y, z) sin(x) + y.^2 + log(z) - 3;
f2 = @(x, y, z) 3*x +    2.^y - z.^3;
f3 = @(x, y, z) x.^2 +    y.^2 + z.^3 - 6;

elx = @(y, z) (z.^3 - 2.^y)/3; % value of x from f2
% Derivative of elx by y and z
delxy = @(y, z) (z.^3 - log(2)*2.^y)/3;
delxz = @(y, z) (3*z.^2 - 2.^y)/3;

%substitute x for elx in f1 and f3
f1n = @(y, z) f1(elx(y, z), y, z); 
f3n = @(y, z) f3(elx(y, z), y, z); 

% Derivative of ¨f1n and f3n by y and z
% Changed to be approximated rather than analytic (less chance of error)
h = 1E-8;
df1ny = @(y, z) (f1n(y+h, z) - f1n(y-h, z))/(2*h); 
df1nz = @(y, z) (f1n(y, z+h) - f1n(y, z-h))/(2*h);
df3ny = @(y, z) (f3n(y+h, z) - f3n(y-h, z))/(2*h);
df3nz = @(y, z) (f3n(y, z+h) - f3n(y, z-h))/(2*h);

% Phi as described by assignment
phi = @(y, z) (f1n(y, z)-3).^2 + (f3n(y, z)-6).^2;

[X, Y] = meshgrid([-10:0.02:10], [0:0.01:10]);
t = [1:100];
surfc(X, Y ,phi(X, Y))
% Shows the interesting intervall
axis([-5 10 -5 9 0 0.9])
