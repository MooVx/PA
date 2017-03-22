close all;

k=1;
T=1;
Ti=0.3;
t=0:0.01:10;

licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);
hold on

k=0.5;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);

k=2;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);

title('OdpowiedŸ na impuls jednostkowy, ca³kuj¹cy z inercj¹ I rzêdu. T = const, Ti = 0.3');
xlabel('t');
ylabel('y(t)');

legend('k=1','k=0.5','k=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);
t=0:0.01:10;

k=1;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);
hold on

k=1;
T=0.5;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);

k=1;
T=5;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);

title('OdpowiedŸ na impuls jednostkowy, ca³kuj¹cy z inercj¹ I rzêdu. k = const, Ti = 0.3 ');
xlabel('t');
ylabel('y(t)');

legend('T=1','T=0.5','T=5');

hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(3);
t=0:0.01:10;

k=1;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);
hold on

k=1;
T=1;
Ti=0.5;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);

k=1;
T=1;
Ti=2;
licz = [k];
mian = [T*Ti,Ti,0];
print_impulse(licz,mian,t);

title('OdpowiedŸ na impuls jednostkowy, ca³kuj¹cy z inercj¹ I rzêdu. k = const, T = const ');
xlabel('t');
ylabel('y(t)');

legend('Ti=1','Ti=0.5','Ti=2');



hold off;