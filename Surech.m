function [Signal]=Surech(SignS,fact)

t=floor(length(SignS)/(84*3));

Signal=SignS(1:t:end);
Signal2=SignS(1:fact:end);

Signal=repelem(Signal,95);
Signal2=repelem(Signal2,95);

figure,
plot(Signal)
title("Signal");

figure,
plot(Signal2),
title("Signal2")
