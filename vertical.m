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
