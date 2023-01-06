clear,
close all,
clc,

img=imread("./Image/Saintmichel.jpg");

figure,
imshow(img);
[h,w,z] = size(img);

ycbcr = rgb2ycbcr(img);
y = ycbcr(:,:,1);

%On passe l'image en double pour les calculs
img=double(img);

[xA,yA,xB,yB,L]=point_longueur();

[chiffre, type, res] = Image2Code(img, xA, yA, xB, yB);

D = detection(y);

figure,
imshow(D);

  


