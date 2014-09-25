% Indata
x = [91 121 152 182 213 244];
y = [13.2 15.8 18.0 18.4 16.6 14.1];
A = [x'.^2 x' ones(size(x'))];

% Calculates the coefficients ("minsta kvadrat"-metoden)
coeffs = A\y';

% Create a function based on the coefficients
f = @(x) coeffs(1)*x.^2 + coeffs(2)*x + coeffs(3);

% Plot the function (and the data)
plot(x, y);
hold on;
x = [91:244];
plot(x, f(x))
