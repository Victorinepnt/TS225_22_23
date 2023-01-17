function [xg,xd,yh,yb]=form_aggr(img,xg,xd,yh1,yh2,yb1,yb2)

[h,w]=size(img);

if (xg-floor(2/100*xg)>0)
    xg=xg-floor(2/100*xg);
end

if (xd+floor(2/100*xd)<h)
    xd=xd+floor(2/100*xd);
end

if (min(yh1,yh2)-floor(2/100*min(yh1,yh2))>0)
    yh=min(yh1,yh2)-floor(2/100*min(yh1,yh2));
end

if max(yb1,yb2)+floor(2/100*max(yb1,yb2))<w
    yb=max(yb1,yb2)+floor(2/100*max(yb1,yb2));
end

