function [first,last] = testBorne(SignS)

first=find(SignS==0,1,'first');
last=find(SignS==0,1,'last');

end