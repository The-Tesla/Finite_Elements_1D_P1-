%% pour validation
clear
clc

a=0;
b=pi ;
h=0.1;
alpha=1;
ue=@(x)sin(x);
f=@(x)sin(x);
[X, T] = MaillageP1(a, b, h);
[U] = EF_P1(alpha,f,X,T);
% Post-traitement
%%%%%%   comparaison graphique
figure('name', 'Comparaision: solutions exacte et approchée '); fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
%%%%%%   Analyse d'erreur
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(i);
end
figure('name', 'analyse erreur'); plot(X,erreur, 'r-o');
ylabel('erreur');
xlabel('noeuds');