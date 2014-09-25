t = [1 32 60 274 305 335 91 121 152 182 213 244];
t = t';
y = [6.1 8.0 10.4 11.4 8.7 6.6 13.2 15.8 18.0 18.4 16.6 14.1];

w = 2*pi/365;
k = 3; % 9 funkar ungefär lika bra
A = [ones(size(t)) cos(w*t) sin(w*t) cos(k*w*t) sin(k*w*t)];

c = A\y';

f = @(t) c(1) + c(2)*cos(w*t) + c(3)*sin(w*t) + c(4)*cos(k*w*t) + c(5)*sin(k*w*t);
subplot(2, 2, 4)
plot(t, abs(f(t')-y), 'r*')

subplot(2, 2, 3)
plot(t, y, 'g*')
hold on
t2 = 1:365;
plot(t2, f(t2))

disp(sum((f(t')-y).^2)) % Felkvadratsumma
disp(f(157)) % Nationaldagen
plot(157, f(157), 'rO') % Utritad nationaldag