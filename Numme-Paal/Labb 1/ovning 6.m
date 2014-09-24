clear all
close all

[x,y] = meshgrid([-2:.2:2]); % set up 2-D plane

Z = ((-(2.^y)/3 + (x.^3)/3)^2 + y.^2 + x.^3 - 6).^2 + (sin(-(2^y)/3 + (x.^3)/3) + y.^2 + log(x) - 3).^2; % plot 3rd dimension on plane

figure
surf(x,y,Z,gradient(Z)) % surface plot, with gradient(Z)
 % determining color distribution
colorbar % display color scale, can adjust 
 % location similarly to legend
 
% -------------------------------------------

% f = inline('((-(2.^y)/3 + (x.^3)/3)^2 + y.^2 + x.^3 - 6).^2 + (sin(-(2^y)/3 + (x.^3)/3) + y.^2 + log(x) - 3).^2', 'x', 'y');

% x = -3 : 0.05 : 3;
% y = -3 : 0.05 : 3;
% [X, Y] = meshgrid(x, y);

% Z = f(X, Y);

% subplot(2, 2, 1);
% contour(X, Y, Z, [5; 1; 0.5; 0.1]);
% grid
% subplot(2, 2, 2);

% ind = find(Z > 1);
% Z(ind) = 1;
% surfc(X, Y, Z);

% -------------------------------------------

%
% syms x
% syms y
% syms z

% solve(sin(x) + y^2 + log(z) == 3)

% fh = @tanh;
% % fplot('x.^2 - 4*cos(x)', [1.1,1.3])

% % sin(x) +y^2 + log(z) = 3
% % x = -(2^y)/3 + (z^3)/3
% %
% % (-(2^y)/3 + (z^3)/3)^2 + y^2 + z^3 - 6 = 0
% % sin(-(2^y)/3 + (z^3)/3) + y^2 + log(z) - 3 = 0
% %
% % 3x+ 2^y − z^3 = 0
% % x^2 +y^2 +z^3 = 6
