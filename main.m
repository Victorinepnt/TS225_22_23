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

[y,x,form] = bary(D);

[R, xg, xd] = rechercherayon(x,y,form);

[yh1,yb1, yh2, yb2] = rechercheregion(form, xd,xg,y);

figure,
imshow(form);
hold on;
plot(x,y, 'r+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xg,yb1, 'b+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xg,yh1, 'g+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xd,yb2, 'r+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xd,yh2, 'r+', 'MarkerSize', 15, 'LineWidth', 2);

[xg,xd,yh,yb]=form_aggr(form,xg,xd,yh1,yh2,yb1,yb2);

figure,
imshow(form(yh:yb,xg:xd));
title("Zone ok");




[chiffre, type, res] = Image2Code(Lumi, xA, yA, xB, yB);



figure,
imshow(D);

  


