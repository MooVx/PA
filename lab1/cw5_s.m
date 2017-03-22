close all;

Td=1;
T=1;
t=0:0.01:10;
Td=1;
T=1;
licz = [Td 0];
mian = [T 1];
print_step(licz,mian,t);
hold on

Td=0.5;
T=1;
licz = [Td 0];
mian = [T 1];
print_step(licz,mian,t);

Td=2;
T=1;
licz = [Td 0];
mian = [T 1];
print_step(licz,mian,t);

title('OdpowiedŸ na skok jednostkowy, ró¿niczkuj¹cy rzeczywisty T = const');
xlabel('t');
ylabel('y(t)');

legend('Td=1','Td=0.5','Td=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);
Td=1;
T=1;
t=0:0.01:10;
Td=1;
T=1;
licz = [Td 0];
mian = [T 1];
print_step(licz,mian,t);
hold on

Td=1;
T=0.5;
licz = [Td 0];
mian = [T 1];
print_step(licz,mian,t);

Td=1;
T=2;
licz = [Td 0];
mian = [T 1];
print_step(licz,mian,t);

title('OdpowiedŸ na skok jednostkowy, ró¿niczkuj¹cy rzeczywisty Td = const');
xlabel('t');
ylabel('y(t)');

legend('T=1','T=0.5','T=2');

hold off;