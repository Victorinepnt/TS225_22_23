function [points]=Signature(x,y,img)

points=img(floor(y),floor(x),:);
% YCbCr=rgb2ycbcr(points);
% Y=YCbCr(:,:,1);

<<<<<<< HEAD
figure,
plot(Y);
title("Signal")
