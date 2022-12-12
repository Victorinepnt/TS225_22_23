function [coor_deb,coor_fin,size] = recherche_borne(Signal,nbEch)

gardeNor=[1 0 1];

size=floor(nbEch/95);

%gardeNor=repelem(gardeNor,size)

test=0;

%lenVer=length(gardeNor)-1;
% for i=1:nbEch-lenVer
%     Signal(i:i+lenVer)
%     verif=gardeNor-Signal(i:i+lenVer)
%     if (test==0 & verif)
%         coor_deb=i+length(gardeNor);
%         test=1;
%     end
%     if (test==1 & verif)
%         coor_fin=i+length(gardeNor);
%     end
% end
% SignalMat=reshape(Signal',[],size);
% 
% SignalMat=SignalMat';
% 
% gardeNorligne=repelem(gardeNor,size);
% 
% gardeNorMat=reshape(gardeNorligne,[],size);

test=0;
i=0;

while test==0
    i=i+1;
    if Signal(i)==1
        test=1;
    end
    coor_deb=i+3*size;
end

test=0;
i=0;
Signal_inv=fliplr(Signal);

while test==0
    i=i+1;
    if Signal_inv(i)==1
        test=1;
    end
    coor_fin=length(Signal)-(i+3*size);
end

    