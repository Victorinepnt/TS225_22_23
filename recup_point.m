function [x,y] = recup_point(xA,yA,xB,yB,N)

xi=(1:N);
x=xA+(xi/(N-1))*(xB-xA);

% yi=(1:N);
% y=yA+(yi/(N-1))*(yB-yA);

y=yA; %%(floor((yA+yB)/2));

