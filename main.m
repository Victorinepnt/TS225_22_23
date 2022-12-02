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
nbEch=1000;
[x,y]=recup_point(xA,yA,xB,yB,nbEch);

%Segment

Sign=Signature(x,y,img);

%Seuillage
Seuil=AlgoOtsu(Sign,N);
SignS=zeros(1,length(Sign));
SignS=1-(Sign>Seuil);

figure,
plot(SignS),
title("Signal seuiller")

%Calcul des nouvelles bornes 


