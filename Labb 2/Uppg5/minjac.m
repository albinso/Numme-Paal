function jac=minjac(Fcn,z)
% * Funktionsbeskrivning
%  

% * Variabelbeskrivning
% Fcn = funktionen
% z = parameter till Fcn
 
% Initiering
  NR = length(z);
  F = feval(Fcn,z);
  jac=[];
  stegtol=1.E-8;
 
  % Iterering
  for i = 1:NR,
    z0 = z;
    st = z0(i) * stegtol;
    if st==0,
        st = 1.E-10; 
    end
    z0(i) = z0(i)+st;
    jac = [jac ( feval(Fcn,z0)-F )/st];
  end
end