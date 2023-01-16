clear,
close all,
clc,

img=imread("./Image/2022-12-16 (3).png");
figure,
imshow(img);
[h,w,z] = size(img);

ycbcr = rgb2ycbcr(img);
Lumi = ycbcr(:,:,1);

Lumi = double(Lumi);

D = detection(Lumi);

[xA,yA,xB,yB,L]=point_longueur();


[chiffre, type, res] = Image2Code(Lumi, xA, yA, xB, yB);



figure,
imshow(D);

  


