clear,
close all,
clc,

img=imread("./Image/haribo.jpg");
figure,
imshow(img);
[h,w,z] = size(img);

ycbcr = rgb2ycbcr(img);
Lumi = ycbcr(:,:,1);

Lumi = double(Lumi);
[xA,yA,xB,yB,L]=point_longueur();

D = detection(Lumi);


[chiffre, type, res] = Image2Code(Lumi, xA, yA, xB, yB);



figure,
imshow(D);

  


