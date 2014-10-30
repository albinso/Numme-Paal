% Noggrannhetsordning = p där h^p * konstant = trunkeringsfelet (1 för
% front och 2 för central)

% funktioner (f, f-prim, f-prim med centraldifferens och f-prim med
% framåtdifferens [uppgift a) och uppgift b)]
f = @(x) 60*x - (((x.^2 + x + 0.1).^6)/((x+1).^6)) - 10 * x .*exp(-x);
fp = @(x) 60 - 6 * (2*x + 1) * (x.^2 + x + 0.1).^5 / ((x+1).^6) + 6 * (x.^2 + x + 0.1).^6 / ((x+1).^7) + 10 * x .* exp(-x) - 10 * exp(-x);
fpc = @(x, hh) (f(x+hh) - f(x-hh))/(2*hh);
fpf = @(x, hh) (f(x+hh) - f(x))/(hh);

% uppskattar derivatans värde numeriskt och analytiskt i x=0.2 och x=1 [uppgift c)]
% steglängden vid approximationen
hh = 10^-6 

% x = 0.2
f_prim_0_2 = fp(0.2)
f_prim_central_0_2 = fpc(0.2, hh)
f_prim_front_0_2 = fpf(0.2, hh)

% x = 1
f_prim_1 = fp(1)
f_prim_central_1 = fpc(1, hh)
f_prim_front_1 = fpf(1, hh)

F = [[hh hh]; [f_prim_0_2 f_prim_1]; [f_prim_central_0_2 f_prim_central_1]; [f_prim_front_0_2 f_prim_front_1]];

printmat(F', 'c)', 'x=0.2 x=1', 'h prim central front')


% [uppgift d)]
% jämför ett diffarna mellan numeriskt och analytiskt för ett flertal
% h-värden (se nedan). Dessa presenteras som enskilda resultat samt med en
% diff mellan fpc och fp.

% en lista av alla approximationssteg h
h=[1.E-3 1.E-4 1.E-5 1.E-6 1.E-7 1.E-8 1.E-9 1.E-10 1.E-11 1.E-12 1.E-13];

% itererar över h för att generera all data
for i = 1:11
    diff_fpc_fp_1(i) = fpc(1, h(i)) - fp(1);
    diff_fpf_fp_1(i) = fpf(1, h(i)) - fp(1);
    diff_fpc_fp_02(i) = fpc(0.2, h(i)) - fp(0.2);
    diff_fpf_fp_02(i) = fpf(0.2, h(i)) - fp(0.2);
    fpc_disp(i) = fpc(0.2, h(i));
    fp_disp(i) = fp(0.2);
end

% skapar matrisen med all data
M = [h; abs(diff_fpc_fp_02); fpc_disp; fp_disp];

% skriver ut matrisen
printmat(M', 'Test', 'Row1 Row2 Row3 Row4 Row5 Row6 Row7 Row8 Row9 Row10 Row11', 'h (fpc-fp) fpc fp')
% sätter upp värden/variabler för att plotta funktionen i loglog-diagram
xx = logspace(-13,-3);
%yy = 60 .* xx - (((xx.^2 + xx + 0.1).^6)/((xx+1).^6)) - 10 .* xx .* exp(-xx);
% yy = abs(fpf(1, xx) - fp(1));
% plottar funktionen
yy = [];
for a = xx
    yy = [yy abs(fpc(1, a) - fp(1))];
end
hold off
loglog(h, abs(diff_fpc_fp_1), 'r') % IMPORTANTE MUCHO
hold on
loglog(h, abs(diff_fpc_fp_02), 'g')
loglog(h, abs(diff_fpf_fp_02), 'b')
loglog(h, abs(diff_fpf_fp_1), 'c')