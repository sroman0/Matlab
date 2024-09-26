% Valori nominali dei componenti
R = 2.7e3; % Resistenza in Ohm
C = 47e-9; % Capacità in Farad

% Creazione del filtro RC
H = tf(1, [R*C, 1]);

% Diagramma asintotico di Bode
bode(H);
grid on;

