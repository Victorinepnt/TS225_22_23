function [x,y] = recup_point(xA,yA,xB,yB,N)

y=yA;
x=zeros(1,N);
for i=1:N
    x(i)=xA+(i/(N-1))*(xB-xA);
end
