hold off;
% Indata
t = [1 32 60 274 305 335 91 121 152 182 213 244];
y = [6.1 8.0 10.4 11.4 8.7 6.6 13.2 15.8 18.0 18.4 16.6 14.1];

T = 365;
w = 2*pi/T;
A = [ones(size(t')) cos(w*t') sin(w*t')];

% Calculates coefficients
c = A\y';

% Plot t and y
subplot(2, 2, 1)
plot(t, y, 'g*')
hold on

% The function, depending on the coefficients
f = @(t) c(1) + c(2)*cos(w*t) + c(3)*sin(w*t);

% Plots the function
subplot(2, 2, 2)
plot(t, abs(f(t)-y), 'r*')
subplot(2, 2, 1)
t2 = 1:365;
plot(t2, f(t2))

