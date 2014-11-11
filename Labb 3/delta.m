function res = delta(t, xy)
R=2;
x = xy(1);
y = xy(2);
res = [1-(R^2*(x^2 - y^2)/(x^2 + y^2)^2); (-2*x*y*R^2)/(x^2 + y^2)^2]
