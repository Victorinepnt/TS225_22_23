function region = detection(img)

%Fonction qui détermine la région où se trouve le code barre
sigma1 = 1.5;
sigma2 = sigma1*95;

val = floor(3*sigma1)+1;
P = -val:val;
[X,Y] = meshgrid(P,P);

Gx = -X/(2*pi*sigma1^4).*exp(-(X.^2+Y.^2)/(2*sigma1^2));

Gy = -Y/(2*pi*sigma1^4).*exp(-(X.^2+Y.^2)/(2*sigma1^2));

Ix = conv2(img, Gx);
Iy = conv2(img, Gy);

DeltaI = [Ix, Iy];
DeltaNI = DeltaI/norm(DeltaI);

Wx = -X/(sqrt(2*pi)*sigma2^2).*exp(-(X.^2+Y.^2)/(2*sigma2^2));

Wy = -Y/(sqrt(2*pi)*sigma2^2).*exp(-(X.^2+Y.^2)/(2*sigma2^2));

Txx = conv2(DeltaNI(:,1:1034).^2, Wx);
Tyy = conv2(DeltaNI(:,1035:2068).^2, Wy);

Txy = conv2(DeltaNI(:,1:1034).*DeltaNI(:,1035:2068), Wx*Wy);

D = sqrt(((Txx-Tyy).^2)+(4*Txy.^2))/(Txx + Tyy);

[h,w] = size(D);

region = AlgoOtsu(D,h*w);




