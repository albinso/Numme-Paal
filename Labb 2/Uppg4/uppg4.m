% Detta är ett 'M'

t = [0:0.05:20];
hold on

centerX = 5; centerY = 15; width = 4; height = 6;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = 5; centerY = 20; width = 4; height = 6;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = -2; centerY = 25; width = 6; height = 4;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = 10; centerY = 25; width = 6; height = 4;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = -5; centerY = 20; width = 4; height = 6;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = 15; centerY = 20; width = 4; height = 6;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = -5; centerY = 13; width = 4; height = 6;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

centerX = 15; centerY = 13; width = 4; height = 6;
rectangle('Position',[centerX - width/2, centerY - height/2, width*2, height*2],...
    'Curvature',[1,1],...
    'FaceColor','m');

axis equal
hold off