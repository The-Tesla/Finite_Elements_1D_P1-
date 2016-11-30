function [U] = EF_P1(alpha,beta,gamma,f,X,T)
% fonction traite l'equation alpha*u"=f sur un[a,b] avec u(a)=u(b)=0
%
%Creation de la matrice globale K et du second membre globale F
%[X, T] = MaillageP1(a, b, h);
Nn=size(X,1);      %nombre des noeuds
[K,F] = AssemblageP1(alpha,beta,gamma,f, X, T);
%
% Conditions aux bords
for j=1:Nn
 K(1,j)=0.;
 K(Nn,j)=0.;
end
K(1,1)=1.;
K(Nn,Nn)=1.;
%
F(1)=0.;
F(Nn)=0.;
%
% Résolution 
U=K\F;
end

