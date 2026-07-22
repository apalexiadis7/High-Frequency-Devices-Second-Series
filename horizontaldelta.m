function[e]=horizontaldelta(hx,hy)
l=0.3;
k=2*pi/l;
phi=0:(2*pi)/1000:2*pi;
for i=1:1001
e(1,i)=abs(sin(k*hx*cos(phi(1,i)))*sin(k*hy*cos(phi(1,i))));
end
polarplot(phi,e);
end
