function [Signal]=Surech(SignS,fact)

Signal=SignS(1:fact:end);

Signal=repelem(Signal,95);

figure,
plot(Signal)
title("Signal");

