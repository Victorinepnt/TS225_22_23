function [Signal] = Surech (Sign,size)


cpt=1;
for i=1:size+3:(length(Sign)-size)
    Signal(cpt:cpt+size)=ones(1,size)*Sign(i);
    cpt=cpt+size+1;
end
end 