function [xdeb,xfin, nvl_size] = recherche_borne(Signal,nbEch)

%gardeNor=[1 0 1];


%size=floor(nbEch/95);

%gardeNor=repelem(gardeNor,size)

%test=0;

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

nvsize=1;
xdeb=2;
while test==0
    if (Signal(xdeb)==1)
            test = 1;
    end
    xdeb=xdeb+1;
end

test=0;
xfin=length(Signal);

while test==0
    xfin=xfin-11;
    if Signal(xfin)==1
        test=1;
    end
end

nvl_size = floor((xfin-xdeb)/95);

xdeb = xdeb+3*nvl_size;
xfin = xfin-3*nvl_size;

% %Nouvelle idée:
% SignS=Signal;
% nvsize=3*floor(nvsize);
% 
% ajoutsize=(floor(length(SignS)/(nvsize))+1)*nvsize-10000;
% 
% SignS=[SignS zeros(1,ajoutsize)];
% Test=reshape(SignS,3*nvsize,[]);
% h=152*3;
% w=length(SignS)/h;
% Verif=ones(h,w);
