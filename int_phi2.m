function y = int_phi2(f,x1,x2)
%calcule l'intégrale sur l'élément Ti de f*phi1
%moyennant la quadrature de Simpson 
%               Ti
%       |--------|--------|
%       x1       xm       x2
%
xm=(x2+x1)*0.5;
%
y=(x2-x1)/6*(f(x1)*phi2_P1(x1,x1,x2)+4*f(xm)*phi2_P1(xm,x1,x2)+f(x2)*phi2_P1(x2,x1,x2));
end