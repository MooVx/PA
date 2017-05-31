close all;

%wzmocnienie krytyczne to k = 8

k=8;
n=0.01

sim('simulation');

figure
plot(Wynik3(:,1),Wynik3(:,4));
title('Odpowiedü - III rzad - Sterowanie ciagle');

% n= 0.01

k=7.96;
n=0.01

sim('simulation');

figure
stairs(Sterowanie1(:,1),Sterowanie1(:,2));
title('Sterowanie - I rzad - tp=0.01');

figure
plot(Wynik1(:,1),Wynik1(:,2));
title('Odpowiedü - I rzad - tp=0.01');

figure
stairs(Sterowanie2(:,1),Sterowanie2(:,2));
title('Sterowanie - III rzad - tp=0.01');

figure
plot(Wynik2(:,1),Wynik2(:,2));
hold on
plot(Wynik2(:,1),Wynik2(:,3));
plot(Wynik2(:,1),Wynik2(:,4));
title('Odpowiedü - III rzad - tp=0.01');
legend('I cz≥on','II cz≥on','III cz≥on');
hold off

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

figure
stairs(Sterowanie2(:,1),Sterowanie2(:,2));
title('Sterowanie - III rzad - tp=0.1');

figure
plot(Wynik2(:,1),Wynik2(:,2));
hold on
plot(Wynik2(:,1),Wynik2(:,3));
plot(Wynik2(:,1),Wynik2(:,4));
title('Odpowiedü - III rzad - tp=0.1');
legend('I cz≥on','II cz≥on','III cz≥on');
hold off

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

figure
stairs(Sterowanie2(:,1),Sterowanie2(:,2));
title('Sterowanie - III rzad - tp=1');

figure
plot(Wynik2(:,1),Wynik2(:,2));
hold on
plot(Wynik2(:,1),Wynik2(:,3));
plot(Wynik2(:,1),Wynik2(:,4));
title('Odpowiedü - III rzad - tp=1');
legend('I cz≥on','II cz≥on','III cz≥on');
hold off

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

figure
stairs(Sterowanie2(:,1),Sterowanie2(:,2));
title('Sterowanie - III rzad - tp=5');

figure
plot(Wynik2(:,1),Wynik2(:,2));
hold on
plot(Wynik2(:,1),Wynik2(:,3));
plot(Wynik2(:,1),Wynik2(:,4));
title('Odpowiedü - III rzad - tp=5');
legend('I cz≥on','II cz≥on','III cz≥on');
hold off

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

figure
stairs(Sterowanie2(:,1),Sterowanie2(:,2));
title('Sterowanie - III rzad - tp=10');

figure
plot(Wynik2(:,1),Wynik2(:,2));
hold on
plot(Wynik2(:,1),Wynik2(:,3));
plot(Wynik2(:,1),Wynik2(:,4));
title('Odpowiedü - III rzad - tp=10');
legend('I cz≥on','II cz≥on','III cz≥on');
hold off





