function [ elemFi ] = SM_elem_P1(f,X,T,i)
%calcule le second membre élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%elle fait appel aux deux fonctions:
%  y = int_phi1(f,x1,x2) 
%  y = int_phi2(f,x1,x2)
x1=X(T(i,1));
x2=X(T(i,2));
elemFi=[int_phi1(f,x1,x2);int_phi2(f,x1,x2)];
%
end