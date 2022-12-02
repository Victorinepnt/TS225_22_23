function [seuil] = AlgoOtsu(Sign,N)

M=(-0.5:N);
h = histcounts(Sign,M);
len=length(h);
% H=histogram(Sign,M);
% %A=hiscounts(Sign,N);

seuil=zeros(1,length(Sign));

%hc=cumsum(h) à utiliser pour Otsu pour pas de boucle for


hc=cumsum(h);
hctot=hc(length(h));


t=(1:length(h));
hmul=t.*hc;

w=hc/hctot;
n=hmul/hctot;

crit=w.*(n(N)-n).^2+(1-w).*n.^2;

figure,
plot(crit);

seuil=max(crit);