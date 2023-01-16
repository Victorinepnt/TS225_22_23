function D1 = detection(img)

%Fonction qui détermine la région où se trouve le code barre
sigma1 = 1.5;
sigma2 = sigma1*9;

val = sigma1*3;
P = -val:val;
[X,Y] = meshgrid(P);

Gx = -2*(X/(2*pi*sigma1^4)).*exp(-(X.^2+Y.^2)/(2*sigma1^2));

Gy = -2*(Y/(2*pi*sigma1^4)).*exp(-(X.^2+Y.^2)/(2*sigma1^2));

Ix = conv2(img, Gx);
Iy = conv2(img, Gy);

Ix = Ix/norm(Ix);
Iy = Iy/norm(Iy);

%DeltaI = [Ix, Iy];
%DeltaNI = DeltaI/norm(DeltaI);

val2 = sigma2*3;
P2 = -val2:val2;
[X2,Y2] = meshgrid(P2);

Wx = X2/(sqrt(2*pi)*sigma2^2).*exp(-(X2.^2+Y2.^2)/(2*sigma2^2));

Wy = Y2/(sqrt(2*pi)*sigma2^2).*exp(-(X2.^2+Y2.^2)/(2*sigma2^2));

Txx = conv2(Ix.^2, Wx.*Wx);
Tyy = conv2(Iy.^2, Wy.*Wy);

Txy = conv2(Ix.*Iy, Wx.*Wy);

D = sqrt(((Txx-Tyy).^2)+(4*Txy.^2))./(Txx + Tyy);

figure,
imshow(D);
title("Contour");


for i=1:length(D(1,:))
    for j = 1:length(D(:,1))
        if D(j,i) > 0.87 
            D1(j,i) = 1;
        else 
            D1(j,i) =0;
        end
        
    end
end


figure,
imshow(D1);
title("Région détectée");






