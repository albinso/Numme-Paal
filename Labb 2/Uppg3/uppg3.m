hold off;
plot(0, 0);
hold on;
t = [0:0.05:1];
y = bezier(t, 0.81, 0.84)
t2 = [-0.4:0.05:0.5]
mouth = beziermun(t2, 0.1, 0.1)
mouth2 = beziermun(t2, 0.2, 0.1)
%kaustika;
plot(-t, y);
%hold on;
plot(t, y);
plot(t2, mouth);
plot(t2, mouth2);
centerX = -0.5; centerY = 0.5; radius = 0.05;
rectangle('Position',[centerX - radius, centerY - radius, radius*2, radius*2],...
    'Curvature',[1,1],...
    'FaceColor','g');

centerX = 0.5; centerY = 0.5; radius = 0.05;
rectangle('Position',[centerX - radius, centerY - radius, radius*2, radius*2],...
    'Curvature',[1,1],...
    'FaceColor','g');