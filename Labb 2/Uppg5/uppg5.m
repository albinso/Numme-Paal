hold on;
p = @(x)x + 1;
xs = [1:3];
t = f(p, xs);

n = newton(p, xs)
n;
p(n);
f(p, n);
plot([1:3], n');
