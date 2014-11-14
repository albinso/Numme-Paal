function [value, isterminal, direction] = evtfun(t, xy)
    % Avbryt ode45 när x=7.85 (antagligen överdriven precision här)
    value = 7.851531824785027-xy(1); % Är noll när vi ska avbryta
    isterminal = 1; % Signalera att vi ska avbryta vid event
    direction = 0; % Oavsett vilken riktning kurvan har så ska eventet triggas.
end