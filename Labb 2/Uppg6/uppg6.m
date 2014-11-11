global C1; global C2;
global hstar; global tc; global k;
global A; global fM; global L; global g; global H;
A = 10;
d=0.6; fM=0.024; g=9.81; L=600;
C1 = (pi*d^2/4)^2;
C2 = (fM*L)/(2*g*d);

C1
C2
hstar=20; H=30; k=1.05;
h0 = (C1*H + C2*k^2*hstar)/(C1 + C2*k^2);
u0 = k*sqrt(h0-hstar)/sqrt(C1);

tc = 5;
for A=[1:3:11]
    [X Y] = ode45(@f, [-5 10], [h0 u0]);
    hold on;

    plot(X, Y(:,1), 'r')
    plot(X, Y(:,2), 'g')
end