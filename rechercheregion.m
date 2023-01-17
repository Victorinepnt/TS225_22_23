function [yh1,yb1, yh2, yb2] = rechercheregion(img, xd,xg,y)

xd = xd - floor(5/100*xd);
xg = xg + floor(10/100*xg);
yh1 = y;
yb1 = y;
yh2 = y;
yb2 = y;


while(img(yh1,xg)== 0)
    yh1 = yh1-1;
end

while(img(yb1,xg)== 0)
    yb1 = yb1+1;
end

while(img(yh2,xd)== 0)
    yh2 = yh2-1;
end

while(img(yb2,xd)== 0)
    yb2 = yb2+1;
end

