function [value, isterminal, direction] = evtfun(t, xy)
    % Avbryt ode45 n�r x=15.60 (antagligen �verdriven precision h�r)
    value = 15.598833260074112-xy(1);
    value
    isterminal = 1;
    direction = 0;
end