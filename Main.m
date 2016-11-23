%% pour validation
clear
clc

a=0;
b=1;
h=0.1;
alpha=1;
beta=1;
p1 =     -0.1081  ;
p2 =      0.1285  ;
p3 =    -0.06277  ;
p4 =     0.01778  ;
p5 =     0.02459  ;
p6 =   4.258e-05 ;

ue=@(x)p1*x^5 + p2*x^4 + p3*x^3 + p4*x^2 + p5*x + p6;
f=@(x)x^4;
[X, T] = MaillageP1(a, b, h);
[U] = EF_P1(alpha,beta,f,X,T);
% Post-traitement
%%%%%%   comparaison graphique
figure('name', 'Comparaision: solutions exacte et approchée '); fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
%%%%%%   Analyse d'erreur
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(i);
end
figure('name', 'analyse erreur'); 
plot(X,erreur, 'r-o');
ylabel('erreur');
xlabel('noeuds');