close all;
clear all;

k=1;
T1=0.5;
T2=1;
t=logspace(-3,5,10000);

licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);
hold on

k=0.5;
T1=0.5;
T2=1;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);

k=2;
T1=0.5;
T2=1;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);

title('Charakterystyka Nyquista, inercyjny II rz¹d. T1 = const, T2 = const');



legend('k=1','k=0.5','k=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);

k=1;
T1=1;
T2=1;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);
hold on

k=1;
T1=10;
T2=1;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);

k=1;
T1=100;
T2=1;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);

title('Charakterystyka Nyquista, inercyjny II rz¹d. k = const, T2 = const ');



legend('T1=1','T1=10','T1=100');

hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(3);


k=1;
T1=10;
T2=0.1;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);
hold on

k=1;
T1=10;
T2=10;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);

k=1;
T1=10;
T2=100;
licz = [k];
mian = [T1*T2,T1+T2, 1];
print_nyquist(licz,mian,t);

title('Charakterystyka Nyquista, inercyjny II rz¹d. k = const, T1 = const ');



legend('T2=0.1','T2=10','T2=100');

%patrz na transmitancje, T1 i T2 zmieniaj¹ dok³¹dnie to samo

hold off;