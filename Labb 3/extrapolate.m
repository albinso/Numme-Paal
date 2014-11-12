function res = extrapolate(val1, val2)
% val1 is calculated with half the step length of val2
res = val1 + (val1-val2)/3;