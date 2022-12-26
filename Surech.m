function [Signal]=Surech(SignS,fact)

%t=floor(length(SignS)/(84*3));

Signal=SignS(1:fact:end);

Signal=repelem(Signal,95);

figure,
plot(Signal)
title("Signal");

