function res = extrapolate(val1, val2)
% val1 är uppskatning med hälften så lång steglängd som val2
res = val1 + (val1-val2)/3;