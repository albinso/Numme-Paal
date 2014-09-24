hold off;
t = [1 32 60 274 305 335 91 121 152 182 213 244];
y = [6.1 8.0 10.4 11.4 8.7 6.6 13.2 15.8 18.0 18.4 16.6 14.1];

T = 365;
w = 2*pi/T;
A = [ones(size(t')) cos(w*t') sin(w*t')];
c = A\y';

plot(t, y, 'g*')
hold on

f = @(t) c(1) + c(2)*cos(w*t) + c(3)*sin(w*t);
plot(t, abs(f(t)-y), 'r*')
t = 1:365;
plot(t, f(t))
