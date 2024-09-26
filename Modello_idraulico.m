clear
close all

R=10;
L=0.1;
C1=5;
C2=10;
p=1000;
g = 9.81;

A(1,3)=-1/C1;
A(2,3)=1/C2;
A(3,1)=1/L;
A(3,2)=-1/L;
A(3,3)=-R/L;

B(1,1)=1/C1;
B(2,1)=0;
B(3,1)=0;

C(1,1)=0;
C(1,2)=1/(p*g);
C(1,3)=0;

D=0;

MT=ss(A,B,C,D);
G=tf(MT);

poli=pole(G);
zeri=zero(G);