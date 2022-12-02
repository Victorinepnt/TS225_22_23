function [chiffre, type] = barre2chiffre(seq, factsurech, convtab)

NewTab = zeros(30, factsurech*7);

for i=1:30                                      %On sur-échantillonne la table de conversion
    k=1;
    for j=1:7
        if(convtab(i,j)==1)
            NewTab(i,k:k+factsurech-1) = 1;
        end
        k = k+factsurech;
    end
end

chiffre = zeros(13,1);
type = zeros(13,1);

j=1;
mat = zeros(30, 7*factsurech);
for i=2:12
    ligne = seq(j:j+7*factsurech-1);
    for k=1:30
        mat(k,:) = ligne;
    end
    calc = NewTab - mat;
    numligne = 1;
    while(mat(numligne) ~= zeros(1, 7*factsurech))
        numligne = numligne + 1;
    end
    chiffre(i) = convtab(numligne,8);
    type(i) = convtav(numligne,9);
    j = j +7*factsurech;
end

type = A;