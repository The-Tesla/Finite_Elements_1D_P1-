function [K,F] = AssemblageP1(alpha,beta,gamma,f, X, T)
% Assemblage des matrices élémentaires "elemki" dans la matrice globale K
% Assemblage des seconds membres élémentaires "elemFi" dans le second
% membre global F
% cette fonction fait appel aux fonctions:
%    1) mat_elem_P1(alha,X,T,i)
%    2) SM_elem_P1(f,X,T,i)
%
    n = size(X,1);   % nombre des noeuds
    t = size(T,1);   % nombre des éléments
    
    K = zeros(n);    
    F = zeros(n,1);

% Assemblage de la matrice golbale K
%
   for k=1:t   % boucle sur les éléments
       elemKi = mat_elem_P1(alpha,beta,gamma,X,T,k);  % matrice de l'élément numéro k
     for i=1:2  %boucle sur les numéros locaux
     for j=1:2  %boucle sur les numéros locaux
     I=k+i-1;                            % numéros globaux dans K
     J=k+j-1;                            % numéros globaux dans K
     K(I,J)=K(I,J)+ elemKi(i,j);         % l'assemblage
     end
     end    
   end

% Assemblage du second membre élémentaire golbal F
%
   for k=1:t   % boucle sur les éléments
       elemFi = SM_elem_P1(f,X,T,k);  % SM de l'élément numéro k
     for i=1:2  %boucle sur les numéros locaux
     I=k+i-1;                            % numéros globaux dans K
     F(I)=F(I)+ elemFi(i);         % l'assemblage
     end
   end    
end
