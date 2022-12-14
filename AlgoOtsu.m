function [seuil] = AlgoOtsu(Sign,N)

%Création de l'histogramme
M=(-0.5:N);
h = histcounts(Sign,M);
len=length(h);

[A,Edges]=histcounts(Sign,M);

%seuil=zeros(1,length(Sign));

%Calcul de crit
hc=cumsum(h);
hctot=hc(length(h));

t=(1:length(h));
hmul=t.*hc;

w=hc/hctot;
n=hmul/hctot;

crit=w.*(n(N)-n).^2+(1-w).*n.^2;

figure,
plot(crit);

%Recherche de l'indice du maximum
maxi=max(crit);
seuil=find(crit==maxi);