close all;

k=1;
T0=1;
ksi=0.3;
t=0:0.01:10;

licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);
hold on

k=0.5;
T0=1;
ksi=0.3;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);

k=2;
T0=1;
ksi=0.3;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);

title('Odpowiedü na skok jednostkowy, oscylacyjny II rzπd. T0 = const, ksi = 0.3');
xlabel('t');
ylabel('y(t)');

legend('k=1','k=0.5','k=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);
t=0:0.01:10;

k=1;
T0=1;
ksi=0.3;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);
hold on

k=1;
T0=0.5;
ksi=0.3;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);

k=1;
T0=2;
ksi=0.3;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);

title('Odpowiedü na skok jednostkowy, oscylacyjny II rzπd. k = const, ksi = 0.3 ');
xlabel('t');
ylabel('y(t)');

legend('T0=1','T0=0.5','T0=2');

hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(3);
t=0:0.01:10;

k=1;
T0=1;
ksi=0.3;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);
hold on

k=1;
T0=1;
ksi=0.5;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);

k=1;
T0=1;
ksi=0;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_step(licz,mian,t);

title('Odpowiedü na skok jednostkowy, oscylacyjny II rzπd. k = const, T0 = const ');
xlabel('t');
ylabel('y(t)');

legend('ksi=1','ksi=0.5','ksi=0');

%patrz na transmitancje, T0 i ksi zmieniajπ dok≥adnie to samo

hold off;