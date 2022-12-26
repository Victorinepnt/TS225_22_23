function [chiffre, type,res] = barre2chiffre(seq, factsurech, convtab, convtab2)

NewTab = zeros(30,7*factsurech);
for i=1:30
    ligneNewTab = convtab(i,1:7);
    newligne = repelem(ligneNewTab, factsurech);
    NewTab(i,:) = newligne;
end

% for i=1:30                                      %On sur-échantillonne la table de conversion
%     k=1;
%     for j=1:7
%         if(convtab(i,j)==1)
%             NewTab(i,k:k+factsurech-1) = 1;
%         end
%         k = k+factsurech;
%     end
% end



chiffre = zeros(13,1);
type = zeros(13,1);

j=1;
mat = zeros(30, 7*factsurech);
for i=2:7
    ligne = seq(j:j+7*factsurech-1);
    for k=1:30
        mat(k,:) = ligne
    end
    calc = NewTab - mat;
    numligne = 0;
    while(numligne<30)
        numligne = numligne + 1;
        if(calc(numligne,:) == zeros(1, 7*factsurech))
            break;
        end  
    end
    chiffre(i) = convtab(numligne,8);
    type(i) = convtab(numligne,9);
    j = j +7*factsurech;
end

j = j+5*factsurech;   %On saute la garde centrale

for i=8:13
    ligne = seq(j:j+7*factsurech-1);
    for k=1:30
        mat(k,:) = ligne;
    end
    calc = NewTab - mat;
    numligne = 1;
    while(numligne<30)
        if(calc(numligne,:) == zeros(1, 7*factsurech))
            break;
        end
        numligne = numligne + 1;
    end
    chiffre(i) = convtab(numligne,8);
    type(i) = convtab(numligne,9);
    j = j +7*factsurech;
end

%Calcul du 1er chiffre

chiffre1 = type(2:7);
mati = zeros(10,6);
for k=1:10
    mati(k,:) = chiffre1;
end
mat2 = convtab2(:,1:6);
calc2 = mat2 - mati;
numligne = 1;
while(numligne<10)
    if(calc2(numligne,:) == zeros(1,6))
        break;
    end
    numligne = numligne + 1;
end
chiffre(1) = convtab2(numligne,7);

%Vérification du 13ème chiffre
impair = chiffre(1) + chiffre(3) + chiffre(5) + chiffre(7) + chiffre(9) + chiffre(11);
pair = chiffre(2) + chiffre(4) + chiffre(6) + chiffre(8) + chiffre(10) + chiffre(12);
treize = impair + 3*pair;
verif = 10-mod(treize,10);
if(verif == chiffre(13))
    res = 1;
    "13ème chiffre correct"
else
    res = 0;
    "13ème chiffre incorrect"
end



