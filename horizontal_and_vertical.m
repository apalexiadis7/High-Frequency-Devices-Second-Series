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
function[e]=vertical(d)
l=0.3;
k=2*pi/l;
h0=120*pi;
ia=1;
r=50;
theta=0:(2*pi)/1000:2*pi;
%θ κανονικά λαμβάνει τιμές ως π, αλλά λόγω συμμετρίας επιλέγουμε όλο το φάσμα
τιμών (2π)
kk=k*d/2;
for i=1:1001
e(1,i)=(h0*ia/(2*r))*abs(sin(theta(1,i)))*abs(cos(kk*sin(theta(1,i)))+cos(kk*3*sin(theta(1,i)))+cos(kk*5*sin(theta
(1,i)))+cos(kk*7*sin(theta(1,i))));
end
figure
hps=polaraxes;
polarplot(theta,e);
hps.ThetaZeroLocation = 'top';
end
