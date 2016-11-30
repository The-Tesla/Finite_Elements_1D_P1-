%% pour validation
function [U,uex,erreur,n,X] = Main(fu,ues,alpha,beta,gamma,a, b, h)
%clear
%clc
ues=strcat('@(x)',ues);
ue=str2func(ues);
fu=strcat('@(x)',fu);
f=str2func(fu);
% a=0;
% b=pi;
% h=0.01;
% alpha=1;
% beta=1;
% gamma=0;
%ue=@(x)sin(x);
%f=@(x)2*sin(x);
[X, T] = MaillageP1(a, b, h);
uex=ue(X);% exact points
[U] = EF_P1(alpha,beta,gamma,f,X,T);
n = floor((b - a)/h) + 1;
% Post-traitement
%%%%%%   comparaison graphique
% figure('name', 'Comparaision: solutions exacte et approchée '); 
% fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
%%%%%%   Analyse d'erreur
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(X(i));
end
% figure('name', 'analyse erreur'); 
% plot(X,erreur, 'r-o');
% ylabel('erreur');
% xlabel('noeuds');
end