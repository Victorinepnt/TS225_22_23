function[x,y,form]=bary(form)

prt=7/100;
[h,w]=size(form);
prth=floor(prt*h);
prtw=floor(prt*w);
form=form(prth:h-prth,prtw:w-prtw);

sumcol=sum(form');
sumlig=sum(form);


x=find(sumcol==max(sumcol));
x=floor(mean(x));
y=find(sumlig==max(sumlig));
y=floor(mean(y));

