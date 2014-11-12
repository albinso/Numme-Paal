function res = Qv(t, h)
global hstar; global tc; global k;
res = 0;
if t<0
    res = k*sqrt(h-hstar);
end
if t>=0 && t<=tc
    res = k*(1-t/tc)*sqrt(h-hstar);
end

