clear
close all

R1=1;
R2=10;
Cr=0.1; %capacità radiatore
Cs=100; %capacità stanza
%Variabili di stato: temperatura radiatore
% e temperatura stanza
% Ingressi: flusso termico radiatore e temperatura esterna
%Uscite:

%Spazio di stato
%Prima equazione in temperatura radiatore
A(1,1)=-1/(R1*Cr);%elemento 1,1 della matrice dinamica
A(1,2)=-A(1,1);%secondo elemento della matrice dinamica
B(1,1)=1/Cr;%primo elemento seconda matrice dinamica
B(1,2)=0;

%Seconda equazione in temperatura radiatore
A(2,1)=1/(R1*Cs);%elemento 2,1 della matrice dinamica
A(2,2)=-1/Cs*(1/R1+1/R2);%secondo elemento della seconda matrice dinamica
B(2,1)=0;%secondo elemento seconda matrice dinamica
B(2,2)=1/(R2*Cs);

%Equazione di uscita
C=[0 1];
D=0;

%modello nello spazio di stato
MT=ss(A,B,C,D);
G=tf(MT);
num2=G(2).Numerator{1};
den2=G(2).Denominator{1};

G2=tf(num2,den2);

poli=pole(G2);
zeri=zero(G2);