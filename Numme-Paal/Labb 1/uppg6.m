f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10*x.*exp(-x);
x = -1.5:0.001:0;

plot(x, f(x))

