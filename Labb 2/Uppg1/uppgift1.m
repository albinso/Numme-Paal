y = @(x)(exp(-x/3)./(2-cos(pi*x))); % Function

% Volume approximation
func = @(x)y(x).^2;
helpvolume = pi*trapets(0, 2.6, 0.2, func);
volume = pi*trapets(0, 2.6, 0.1, func);
volumebetter = pi*trapets(0, 2.6, 0.05, func);
%volumebetter = volume + (volume-volumebetter)/3;
%volume = helpvolume + (helpvolume-volume)/3;
volumebest = pi*integral(func, 0, 2.6); %quad is deprecated
fi = [0:2*pi/30:2*pi];
x = [0:2.6/30:2.6]';
f = y(x);

% Construct matrixes
X = x*ones(size(fi));
Y = f*cos(fi);
Z = f*sin(fi);
mesh(X, Y, Z);

disp(['    Step=0.1' '  Step=0.05', ' quad']);
disp([volume volumebetter volumebest]);