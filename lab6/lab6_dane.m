clear all;
close all;
N = 0.0840209255961917;
tau = 15;
k_obiekt = 1;
T_obiekt = 45;
x2 = 250.7;
x1 = 36.19;

Tosc = (x2 - x1)/4;
Kkr = 5.3695;

% Oscylacje niet³umione

k = Kkr;
Ti = inf;
Td = 0;

solve_odp( k, Ti, Td, 1 )
title('Oscylacje niet³umione - regulator P');


% Ziegler-Nichols - Regulator P

k = 0.5 * Kkr;
Ti = inf;
Td = 0;

solve_odp( k, Ti, Td, 2 )
title('Ziegler-Nichols - Regulator P');


% Ziegler-Nichols - Regulator PI

k = 0.45 * Kkr;
Ti = 0.83 * Tosc;
Td = 0;

solve_odp( k, Ti, Td, 3 )
title('Ziegler-Nichols - Regulator PI');


% Ziegler-Nichols - Regulator PD

k = 0.8 * Kkr;
Ti = inf;
Td = 0.125 * Tosc;

solve_odp( k, Ti, Td, 4 )
title('Ziegler-Nichols - Regulator PD');


% Ziegler-Nichols - Regulator PID

k = 0.6 * Kkr;
Ti = 0.5 * Tosc;
Td = 0.125 * Tosc;

solve_odp( k, Ti, Td, 5 )
title('Ziegler-Nichols - Regulator PID');


% Modyfikacja Ziegler-Nichols - ma³e przeregulowania

k = 0.33 * Kkr;
Ti = 0.5 * Tosc;
Td = 0.33 * Tosc;

solve_odp( k, Ti, Td, 6 )
title('Modyfikacja Ziegler-Nichols - ma³e przeregulowania');


% Modyfikacja Ziegler-Nichols - bez przeregulowañ

k = 0.2 * Kkr;
Ti = 0.5 * Tosc;
Td = 0.33 * Tosc;

solve_odp( k, Ti, Td, 7 )
title('Modyfikacja Ziegler-Nichols - bez przeregulowañ');


% Passen integral rule

k = 0.7 * Kkr;
Ti = 0.4 * Tosc;
Td = 0.15 * Tosc;

solve_odp( k, Ti, Td, 8 )
title('Passen integral rule');


% Tyreus-Luyben PI

k = 0.3125 * Kkr;
Ti = 2.2 * Tosc;
Td = 0;

solve_odp( k, Ti, Td, 9 )
title('Tyreus-Luyben PI');


% Tyreus-Luyben PID

k = 0.3125 * Kkr;
Ti = 2.2 * Tosc;
Td = 0.1587 * Tosc;

solve_odp( k, Ti, Td, 10 )
title('Tyreus-Luyben PID');


% Metody oparte o parametry odpowiedzi skokowej obiektu.

k = (T_obiekt/(tau*k_obiekt))*0.95;
Ti = 2.4 * tau;
Td = 0.4 * tau;

solve_odp( k, Ti, Td, 11 )
title('Oparte o STEP - 20% przeregulowania + min. regulacji');

% Metody oparte o parametry odpowiedzi skokowej obiektu.

k = (T_obiekt/(tau*k_obiekt))*1.4;
Ti = 1.3 * tau;
Td = 0.5 * tau;

solve_odp( k, Ti, Td, 12 )
title('Oparte o STEP - min. ca³ki z kwadratu uchybu');


