function [value, isterminal, direction] = evtfun(t, xy)
    % Avbryt ode45 när x=15.60 (antagligen överdriven precision här)
    value = 15.598833260074112-xy(1);
    value
    isterminal = 1;
    direction = 0;
end