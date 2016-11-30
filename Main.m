%% pour validation
clear
clc

a=0;
b=pi;
h=0.01;
alpha=1;
beta=1;
gamma=0;
ue=@(x)sin(x);
f=@(x)2*sin(x);
[X, T] = MaillageP1(a, b, h);
[U] = EF_P1(alpha,beta,gamma,f,X,T);
% Post-traitement
%%%%%%   comparaison graphique
figure('name', 'Comparaision: solutions exacte et approchée '); fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
%%%%%%   Analyse d'erreur
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(X(i));
end
figure('name', 'analyse erreur'); 
plot(X,erreur, 'r-o');
ylabel('erreur');
xlabel('noeuds');