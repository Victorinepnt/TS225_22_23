clear,
close all,
clc,

img=imread("./Image/haribo.jpg");
figure,
imshow(img);
[h,w,z] = size(img);

%On passe l'image en double pour les calculs
img=double(img);

[xA,yA,xB,yB,L]=point_longueur();

%Récupération des données sur la longueur
N=256;
nbEch=10000;
[x,y]=recup_point(xA,yA,xB,yB,nbEch);

%Segment

Sign=Signature(x,y,img);

%Seuillage
Seuil=AlgoOtsu(Sign,N);
SignS=zeros(1,length(Sign));
SignS=1-(Sign>Seuil);

figure,
plot(SignS),
title("Signal seuillé")

%Calcul des nouvelles bornes 

[A,B,fact]=recherche_borne(SignS,nbEch);
Sign_borne=SignS(1,A:B);

figure,
subplot(2,1,1)
plot(SignS);
title("Signal avec les bornes")
subplot(2,1,2)
plot(Sign_borne)
title("Signal sans les bornes")


sizesur=floor(length(Sign_borne)/95);

Test1=Surech(Sign_borne,Surech);

figure,
plot(Test1);
title("Surechantillonné");


  









