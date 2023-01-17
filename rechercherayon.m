function [R] = rechercherayon(x,y, img)

xg = x;
xd = x;

while(img(y,xg)== 0)
    xg = xg-1;
end

while(img(y,xd)== 0)
    xd = xd+1;
end

R=floor((xd-xg)/2);
