close all;


% n= 0.01

k=1000;
n=0.01

sim('simulation');

figure
stairs(Sterowanie1(:,1),Sterowanie1(:,2));
title('Sterowanie - I rzad - tp=0.01');

figure
plot(Wynik1(:,1),Wynik1(:,2));
title('Odpowiedü - I rzad - tp=0.01');



% n= 0.1

k=7.75;
n=0.1;

sim('simulation');

figure
stairs(Sterowanie1(:,1),Sterowanie1(:,2));
title('Sterowanie - I rzad - tp=0.1');

figure
plot(Wynik1(:,1),Wynik1(:,2));
title('Odpowiedü - I rzad - tp=0.1');


% n= 1

k=6.25;
n=1;

sim('simulation');

figure
stairs(Sterowanie1(:,1),Sterowanie1(:,2));
title('Sterowanie - I rzad - tp=1');

figure
plot(Wynik1(:,1),Wynik1(:,2));
title('Odpowiedü - I rzad - tp=1');

% n= 5

k=3.7;
n=5;

sim('simulation');

figure
stairs(Sterowanie1(:,1),Sterowanie1(:,2));
title('Sterowanie - I rzad - tp=5');

figure
plot(Wynik1(:,1),Wynik1(:,2));
title('Odpowiedü - I rzad - tp=5');

% n= 10

k=3.1;
n=10;

sim('simulation');

figure
stairs(Sterowanie1(:,1),Sterowanie1(:,2));
title('Sterowanie - I rzad - tp=5');

figure
plot(Wynik1(:,1),Wynik1(:,2));
title('Odpowiedü - I rzad - tp=10');





