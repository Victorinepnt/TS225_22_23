function [Signal]=Surech(SignS,fact)

Signal=SignS(fact:fact:end);
Signal=repelem(Signal,89);

figure,
plot(Signal)
title("Signal");


