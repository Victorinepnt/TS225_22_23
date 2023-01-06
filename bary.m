function[x,y]=bary(form)

[h,w,z]=size(form);
nbpoint=h*w;
nvform=ycbcr2rgb(form);
Y=nvform(:,:,1);
sumtot=sum(sum(Y(:,:)));
mean=floor(sumtot/nbpoint);
[lis_x,lis_y]=find(Y==mean);
len=length(lis_x)
meanx=w/2;
meany=h/2;
lis_test=abs(lis_x-meanx);
ind=find(min(lis_test));
x=lis_x(ind);
y=lis_y(ind);

