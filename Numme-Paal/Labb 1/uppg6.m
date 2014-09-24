while abs(h) > abs(x)*1E-6,
        fval = f(x);
        J = [cos(x)  2*y 1/(x*log(10));
             3       log(a)*2^y   -3*z;
             2*x     2*y           3*z]
        h = (fval/fpval);
        disp(h)
        % disp([x, fval, fpval h])
        x = x-h;
end
