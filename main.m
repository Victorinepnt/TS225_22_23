clear,
close all,
clc,

img=imread("./Image/code_barre_lait.jpg");
figure,
imshow(img);
[h,w,z] = size(img);

%On passe l'image en double pour les calculs
img=double(img);

[xA,yA,xB,yB,L]=point_longueur();

%Récupération des données sur la longueur
N=10000;
[x,y]=recup_point(xA,yA,xB,yB,N);

%Segment

Sign=Signature(x,y,img);

%Signature

