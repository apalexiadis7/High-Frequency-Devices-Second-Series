function[D]=directivity(d)
l=0.3;
h0=120*pi;
ia=1;
0*pi;
k=2*pi/l;
phi=0:(2*pi)/360:2*pi;
theta=0:(pi)/180:pi;
kk=k*d/2;%"βοηθητική" μεταβλητή
paronom=zeros(361,181);
%άθροισμα αντί ολοκληρώματος
for i=1:361
for j=1:181
paronom(i,j)=(h0*ia*ia/(8*(pi^2)))*((sin(theta(1,j)))^2)*((cos(kk*cos(phi(1,i))*sin(theta(1,j)))+cos(kk*3*cos(phi(
1,i))*sin(theta(1,j)))+cos(kk*5*cos(phi(1,i))*sin(theta(1,j)))+cos(kk*7*cos(phi(1,i))*sin(theta(1,j))))^2);
end
end
paron=sum(sum(paronom));
%παρονομαστής
arith=max(max(paronom));
%αριθμητής
D=361*181*arith/paron;
%ζητούμενο αποτέλεσμα (πολ/σμένο με 361*181 αφού ο παρ/στής είναι μέση τιμή
από τόσα δείγματα)
end
