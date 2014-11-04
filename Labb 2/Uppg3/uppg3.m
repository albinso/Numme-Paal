hold off;
plot(0, 0);
hold on;
t = [0:0.05:1];
y = bezier(t, 0.81, 0.84)
t2 = [0:0.05:0.05]
mouth = beziermun(t2, 0.1, 0.1)
mouth2 = beziermun(t2, 0.2, 0.1)
%kaustika;
plot(-t, y);
%hold on;
plot(t, y);
plot(t2, mouth);
plot(t2, mouth2);