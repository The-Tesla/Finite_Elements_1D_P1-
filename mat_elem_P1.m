function [ elemKi ] = mat_elem_P1(alpha,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x2=X(T(i,2));
xm=(x2+x1)*0.5;

A=(x2-x1)/6*(d_phi1(x1,x1,x2)^2+4*d_phi1(xm,x1,x2)^2+d_phi1(x2,x1,x2)^2);
B=(x2-x1)/6*(d_phi1(x1,x1,x2)*d_phi2(x2,x1,x2)+4*d_phi1(xm,x1,x2)*d_phi2(x2,x1,x2)+d_phi1(x2,x1,x2)*d_phi2(x2,x1,x2));
C=(x2-x1)/6*(d_phi2(x1,x1,x2)^2+4*d_phi2(xm,x1,x2)^2+d_phi2(x2,x1,x2)^2);
elemKi=[A  B;B   C];
%elemKi=(alpha/(x2-x1))*[1  -1;-1   1];

end