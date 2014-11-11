function res = f(t, y)
global hstar; global tc; global k; global A; global L; global C1; global g;
global H; global fM;
res = [(sqrt(C1)*y(2)-Qv(t, y(1)))/A (g*(H-y(1))-fM*L*y(2)*abs(y(2)))/L]';
end

