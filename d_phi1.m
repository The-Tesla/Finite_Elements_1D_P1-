function y = d_phi1( x,x1,x2 )

ab=[x1 1;x2 1]\[1;0];
y=polyval(polyder(ab),x);

end

