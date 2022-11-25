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
N=1000;
y=yA;
x=zeros(1,N);
for i=1:N
    x(i)=xA+(i/(N-1))*(xB-xA);
end

