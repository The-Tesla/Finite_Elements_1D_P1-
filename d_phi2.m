function y = d_phi2( x1,x2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
ab=[x1 1;x2 1]\[0;1];
y=polyder(ab);

end
