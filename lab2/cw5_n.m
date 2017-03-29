close all;

Td=1;
T=1;
t=logspace(-2,2,10000);
Td=1;
T=1;
licz = [Td 0];
mian = [T 1];
print_nyquist(licz,mian,t);
hold on

Td=0.5;
T=1;
licz = [Td 0];
mian = [T 1];
print_nyquist(licz,mian,t);

Td=2;
T=1;
licz = [Td 0];
mian = [T 1];
print_nyquist(licz,mian,t);

title('Charakterystyka Nyquista, ró¿niczkuj¹cy rzeczywisty T = const');



legend('Td=1','Td=0.5','Td=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);
Td=1;
T=1;
t=logspace(-2,2,10000);
Td=1;
T=1;
licz = [Td 0];
mian = [T 1];
print_nyquist(licz,mian,t);
hold on

Td=1;
T=0.5;
licz = [Td 0];
mian = [T 1];
print_nyquist(licz,mian,t);

Td=1;
T=2;
licz = [Td 0];
mian = [T 1];
print_nyquist(licz,mian,t);

title('Charakterystyka Nyquista, ró¿niczkuj¹cy rzeczywisty Td = const');



legend('T=1','T=0.5','T=2');

hold off;