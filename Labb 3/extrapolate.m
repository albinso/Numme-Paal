function res = extrapolate(val1, val2)
% val1 �r uppskatning med h�lften s� l�ng stegl�ngd som val2
res = val1 + (val1-val2)/3;