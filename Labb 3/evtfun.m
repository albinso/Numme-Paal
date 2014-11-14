function [value, isterminal, direction] = evtfun(t, xy)
    % Avbryt ode45 n�r x=7.85 (antagligen �verdriven precision h�r)
    value = 7.851531824785027-xy(1); % �r noll n�r vi ska avbryta
    isterminal = 1; % Signalera att vi ska avbryta vid event
    direction = 0; % Oavsett vilken riktning kurvan har s� ska eventet triggas.
end