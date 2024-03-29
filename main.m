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


figure,
imshow(D);

[R, xg, xd] = rechercherayon(x,y,form);

[yh1,yb1, yh2, yb2] = rechercheregion(form, xd,xg,y);



figure,
imshow(form);
hold on;
plot(x,y, 'r+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xg,yb1, 'b+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xg,yh1, 'b+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xd,yb2, 'g+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xd,yh2, 'g+', 'MarkerSize', 15, 'LineWidth', 2);





[xg,xd,yh,yb]=form_aggr(form,xg,xd,yh1,yh2,yb1,yb2);

zoneres=form(yh:yb,xg:xd);

% figure,
% imshow(zoneres);
% title("Zone restreinte");

matcov =cov(zoneres,0,'omitrows');

theta=0:0.001:pi;
R1=R*1.15;
x1=x-R1*cos(theta);
y1=y-R1*sin(theta);
x2=x+R1*cos(theta);
y2=y+R1*sin(theta);

figure,
imshow(img);
hold on;
plot(x,y, 'r+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xg,yb1, 'b+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xg,yh1, 'b+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xd,yb2, 'g+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(xd,yh2, 'g+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(x1(50),y1(50), 'c+', 'MarkerSize', 15, 'LineWidth', 2);
hold on;
plot(x2(50),y2(50), 'c+', 'MarkerSize', 15, 'LineWidth', 2);




%[chiffre, type, res] = Image2Code(Lumi, xA, yA, xB, yB);


  


