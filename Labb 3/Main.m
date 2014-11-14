t = [0:0.05:12];
global globalvariabledonotuse; globalvariabledonotuse=0;
global uppg;
hold off;
format long
uppg = 3;
if uppg == 3 ||uppg == 4
    subplot(2, 2, 3)
    hold on;
end
if uppg == 1 || uppg == 2 || uppg == 3 || uppg == 4
    for y=[0.2 0.6 1.0 1.4]
        [T, XY] = ode45(@delta, t, [-4 y]);
        plot(XY(:,1), XY(:,2));
        XY(end, end-1)
        if y==0.2
            endpoint = XY(end, :); % Anv�nds f�r att hitta t i sektionen efter loopen.
        end
        hold on;
    end
end

if uppg == 2
    % Hitta t s� att grafen med start i (-4, 0.2) har samma x som den med start
    % i (-4, 1.4) har vid t=11
    
    ylabel('Y position')
    xlabel('X position')
    endpoint;
    op = odeset('Events', @evtfun);
    [T, XY] = ode45(@delta, [12:20], [endpoint(1) endpoint(2)], op);
    title(strcat('Cirkeln �r partikelns position efter:', num2str(T(end)), ' sekunder'))
    plot(XY(end, 1), XY(end, 2), 'O');
    T(end)
end



if uppg == 3 || uppg == 4
    points = package(-4, 1, 0.6, 20);
    [T, XY] = calcanddrawpoints(t, points, @delta);
    areacurve20 = zeros(size(t));
    for i=1:length(t)
        areacurve20(i) = polygonarea(XY(1, i, :), XY(2, i, :));
    end

    points = package(-4, 1, 0.6, 40);
    [T, XY] = calcanddrawpoints(t, points, @delta);
    areacurve40 = zeros(size(t));
    for i=1:length(t)
        areacurve40(i) = polygonarea(XY(1, i, :), XY(2, i, :));
    end

    points = package(-4, 1, 0.6, 80);
    [T, XY] = calcanddrawpoints(t, points, @delta);
    areacurve80 = zeros(size(t));
    for i=1:length(t)
        areacurve80(i) = polygonarea(XY(1, i, :), XY(2, i, :));
    end

    hold off
    subplot(2, 2, 1)
    hold on
    xlabel('x position (of the first point)')
    ylabel('area of polygon')
    title('area for 40 and 20 corners (drawn with - or fat line respectively). extrapolated area with 40 corners as wholedrawn')
    plot(XY(1, :, 1), areacurve40, 'g--')
    hold on
    plot(XY(1, :, 1), areacurve20, 'r.')

    area = extrapolate(areacurve40, areacurve20);
    areabetter = extrapolate(areacurve80, areacurve40);
    plot(XY(1, :, 1), area)

    subplot(2, 2, 2)
    xlabel('x position (of the first point)')
    ylabel('area of polygon')
    title('area for extrapolation, with 80 and 40 corners (whole line and - respectively)')
    hold on
    plot(XY(1, :, 1), area, '--')
    plot(XY(1, :, 1), areabetter, 'r')
end


    




