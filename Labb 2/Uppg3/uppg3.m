% Rensar fönstret så att enbart den ritade gubben kommer synas
hold off;
plot(0, 0);
hold on;

% Våra två intervall
% Den ena för kroppen, den andra för munnen
t = [0:0.05:1];
t2 = [-0.4:0.05:0.5]

% ritar kroppen och munnen
kropp = bezier(t, 0.81, 0.84)
mun = beziermun(t2, 0.1, 0.1)
mun2 = beziermun(t2, 0.2, 0.1)

% Ritar kroppen, ser till att den är symmetriskt
% Ritar även upp munnen (över- och undersida)
plot(-t, kropp);
plot(t, kropp);
plot(t2, mun);
plot(t2, mun2);

% Ritar ögonen
% Vänsterögat
centerX = -0.5; centerY = 0.5; radius = 0.05;
rectangle('Position',[centerX - radius, centerY - radius, radius*2, radius*2],...
    'Curvature',[1,1],...
    'FaceColor','g');

% Högerögat
centerX = 0.5; centerY = 0.5; radius = 0.05;
rectangle('Position',[centerX - radius, centerY - radius, radius*2, radius*2],...
    'Curvature',[1,1],...
    'FaceColor','g');