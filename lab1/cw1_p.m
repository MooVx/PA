close all;
figure(1);
k=1;
T=1;
t=0:0.01:10;
k=1;
T=1;
licz = [k];
mian = [T 1];
print_impulse(licz,mian,t);
hold on

k=0.5;
T=1;
licz = [k];
mian = [T 1];
print_impulse(licz,mian,t);

k=2;
T=1;
licz = [k];
mian = [T 1];
print_impulse(licz,mian,t);

title('Odpowiedü na impuls jednostkowy, inercyjny I rzπd. T = const');
xlabel('t');
ylabel('y(t)');
legend('k=1','k=0.5','k=2');

hold off;

figure(2);
k=1;
T=1;
t=0:0.01:10;
k=1;
T=1;
licz = [k];
mian = [T 1];
print_impulse(licz,mian,t);
hold on

k=1;
T=0.5;
licz = [k];
mian = [T 1];
print_impulse(licz,mian,t);

k=1;
T=2;
licz = [k];
mian = [T 1];
print_impulse(licz,mian,t);

title('Odpowiedü na impuls jednostkowy, inercyjny I rzπd. k = const');
xlabel('t');
ylabel('y(t)');

legend('T=1','T=0.5','T=2');

hold off;