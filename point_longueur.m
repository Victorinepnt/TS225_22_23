function [xA,yA,xB,yB,L] = point_longueur()

%Choix du segment de travail
[yA,xA]=ginput(1);
[yB,xB]=ginput(1);

%Calcul longueur du rayon
L=sqrt((xB-xA)^2+(yB-yA)^2);