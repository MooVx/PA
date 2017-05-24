clear all;

close all;

t = 0:0.01:300;

N = 1;
tau = 15;
k_obiekt = 1;
T_obiekt = 45;
x2 = 250.7;
x1 = 36.19;

Tosc = (x2 - x1)/4;
Kkr = 5.3695;

% Oscylacje niet³umione

k = Kkr;
Ti =  1e+10;
Td = 0;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 1 );
% title('Oscylacje niet³umione - regulator P');
wyniki(1,1) = calka;
wyniki(1,2) = blad;
wyniki(1,3) = przeregulowanie;
wyniki(1,4) = czas_regulacji;


% Ziegler-Nichols - Regulator P

k = 0.5 * Kkr;
Ti =  1e+10;
Td = 0;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 2 );
wyniki(2,1) = calka;
wyniki(2,2) = blad;
wyniki(2,3) = przeregulowanie;
wyniki(2,4) = czas_regulacji;
%title('Ziegler-Nichols - Regulator P');


% Ziegler-Nichols - Regulator PI

k = 0.45 * Kkr;
Ti = 0.83 * Tosc;
Td = 0;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 3 );
wyniki(3,1) = calka;
wyniki(3,2) = blad;
wyniki(3,3) = przeregulowanie;
wyniki(3,4) = czas_regulacji;
%title('Ziegler-Nichols - Regulator PI');


% Ziegler-Nichols - Regulator PD

k = 0.8 * Kkr;
Ti =  1e+10;
Td = 0.125 * Tosc;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 4 );
wyniki(4,1) = calka;
wyniki(4,2) = blad;
wyniki(4,3) = przeregulowanie;
wyniki(4,4) = czas_regulacji;
%title('Ziegler-Nichols - Regulator PD');


% Ziegler-Nichols - Regulator PID

k = 0.6 * Kkr;
Ti = 0.5 * Tosc;
Td = 0.125 * Tosc;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 5 );
wyniki(5,1) = calka;
wyniki(5,2) = blad;
wyniki(5,3) = przeregulowanie;
wyniki(5,4) = czas_regulacji;
%title('Ziegler-Nichols - Regulator PID');


% Modyfikacja Ziegler-Nichols - ma³e przeregulowania

k = 0.33 * Kkr;
Ti = 0.5 * Tosc;
Td = 0.33 * Tosc;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 6 );
wyniki(6,1) = calka;
wyniki(6,2) = blad;
wyniki(6,3) = przeregulowanie;
wyniki(6,4) = czas_regulacji;
%title('Modyfikacja Ziegler-Nichols - ma³e przeregulowania');


% Modyfikacja Ziegler-Nichols - bez przeregulowañ

k = 0.2 * Kkr;
Ti = 0.5 * Tosc;
Td = 0.33 * Tosc;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 7 );
wyniki(7,1) = calka;
wyniki(7,2) = blad;
wyniki(7,3) = przeregulowanie;
wyniki(7,4) = czas_regulacji;
%title('Modyfikacja Ziegler-Nichols - bez przeregulowañ');


% Passen integral rule

k = 0.7 * Kkr;
Ti = 0.4 * Tosc;
Td = 0.15 * Tosc;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 8 );
wyniki(8,1) = calka;
wyniki(8,2) = blad;
wyniki(8,3) = przeregulowanie;
wyniki(8,4) = czas_regulacji;
%title('Passen integral rule');


% Tyreus-Luyben PI

k = 0.3125 * Kkr;
Ti = 2.2 * Tosc;
Td = 0;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 9 );
wyniki(9,1) = calka;
wyniki(9,2) = blad;
wyniki(9,3) = przeregulowanie;
wyniki(9,4) = czas_regulacji;
%title('Tyreus-Luyben PI');


% Tyreus-Luyben PID

k = 0.3125 * Kkr;
Ti = 2.2 * Tosc;
Td = 0.1587 * Tosc;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 10 );
wyniki(10,1) = calka;
wyniki(10,2) = blad;
wyniki(10,3) = przeregulowanie;
wyniki(10,4) = czas_regulacji;
%title('Tyreus-Luyben PID');


% Metody oparte o parametry odpowiedzi skokowej obiektu.

k = (T_obiekt/(tau*k_obiekt))*0.95;
Ti = 2.4 * tau;
Td = 0.4 * tau;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 11 );
wyniki(11,1) = calka;
wyniki(11,2) = blad;
wyniki(11,3) = przeregulowanie;
wyniki(11,4) = czas_regulacji;
%title('Oparte o STEP - 20% przeregulowania + min. regulacji');

% Metody oparte o parametry odpowiedzi skokowej obiektu.

k = (T_obiekt/(tau*k_obiekt))*1.4;
Ti = 1.3 * tau;
Td = 0.5 * tau;

[ calka , blad , przeregulowanie , czas_regulacji] = solve_odp( k, Ti, Td, 12 );
wyniki(12,1) = calka;
wyniki(12,2) = blad;
wyniki(12,3) = przeregulowanie;
wyniki(12,4) = czas_regulacji;
%title('Oparte o STEP - min. ca³ki z kwadratu uchybu');


