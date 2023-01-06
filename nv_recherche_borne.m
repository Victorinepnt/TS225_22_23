function [coor_deb,coor_fin,nvsize] = nv_recherche_borne(Signal)

gardeNor=[1 0 1];

test=0;
nvsize=1;
cpt=2;
while test==0
    if (Signal(cpt)==1)
            nvsize=nvsize+1;
    elseif (Signal(cpt)==0) && (Signal(cpt-1)==1)
        test=1;
    end
    cpt=cpt+1;
end

test=floor(length(Signal)/(nvsize*3))+1;
ajoutsize=(test*nvsize*3)-length(Signal);
SignalDetec=[zeros(1,ajoutsize) Signal];

garde=repelem(gardeNor,nvsize);

for i=1:length(SignalDetec)-nvsize*3
    SignalTest(i,:)=SignalDetec(i:i+(nvsize*3)-1);
end

[h,w]=size(SignalTest);

gardeSous=garde.*ones(h,nvsize*3);

Sous=gardeSous-SignalTest;

Add=sum(Sous')';

coor_deb=1;
coor_fin=length(Signal);