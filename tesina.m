clear
close all

C1=50;  %capacità stanza 1
C2=25;  %capacità stanza 2
R1e=10; 
R2e=12;
R1i=1;
R2i=1;
R12=5;
%Variabili di stato: Temperatura stanza 1 e temperatura stanza 2
%Ingressi: Flusso termico q0, Temperatura ambientale Ta, Temperatura
%interna Ti
A(1,1)=-(1/R1e+1/R1i+1/R12)/C1;
A(1,2)=1/(R12*C1);
A(2,1)=1/(R12*C2);
A(2,2)=-(1/R2e+1/R2i+1/R12)/C2;

B(1,1)=1/C1;
B(1,2)=1/(R1e*C1);
B(1,3)=1/(C1*R1i);
B(2,1)=0;
B(2,2)=1/(R2e*C2);
B(2,3)=1/(C2*R2i);

C(1,1)=1;
C(1,2)=0;

D(1,1)=0;
D(1,2)=0;
D(1,3)=0;

MT=ss(A,B,C,D);
G=tf(MT);

numG1=G(1).Numerator{1};
denG1=G(1).Denominator{1};

sys=tf(numG1,denG1);
pzmap(sys)
title('Diagramma polare - Poli e Zeri');
xlabel('Parte Reale');
ylabel('Parte Immaginaria');


t1 = 0:0.1:10;  
[y, t_impulse] = impulse(sys, t1);

figure;
plot(t_impulse, y);
title('Risposta all''Impulso');
xlabel('Tempo');
ylabel('y(t)');
grid on;

bode(sys);

frequency = 0.02;  % Frequenza della sinusoide in Hz
amplitude = 0.5;  % Ampiezza della sinusoide

t2 = 0:0.01:100;

u = amplitude * sin(2*pi*frequency*t2);



[y, t, x] = lsim(sys, u, t2);

figure;
plot(t, u, 'r', t, y, 'b', 'LineWidth', 1.5);
title('Risposta alla Sinusoide in Ingresso');
xlabel('Tempo');
ylabel('Amplitude');
legend('Ingresso Sinusoidale', 'Uscita del Sistema');
grid on;