function [Signal]=Surech(SignS,fact)

Signal=SignS(1:fact:end);

Signal=repelem(Signal,fact);

