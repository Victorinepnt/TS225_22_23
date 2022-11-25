function [xA,yA,xB,yB,L] = point_longueur()

%Choix du segment de travail
[xA,yA]=ginput(1);
[xB,yB]=ginput(1);

%Calcul longueur du rayon
L=sqrt((xB-xA)^2+(yB-yA)^2);