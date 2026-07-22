function[e]=horizontal(d)
l=0.3;
k=2*pi/l;
phi=0:(2*pi)/1000:2*pi;
kk=k*d/2;
%"βοηθητική μεταβλητή"
for i=1:1001
%κανονικοποιημένο ως προς μέτρο |Ε0|
e(1,i)=0.25*abs(cos(kk*cos(phi(1,i)))+cos(kk*3*cos(phi(1,i)))+cos(kk*5*cos(phi(1,i)))+cos(kk*7*cos(phi(1,i))));
end
polarplot(phi,e);
end
