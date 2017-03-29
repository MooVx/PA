close all;

k=1;
T=1;
Ti=0.3;
t=logspace(-2,2,10000);

licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);
hold on

k=0.5;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);

k=2;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);

title('Charakterystyka Bodego, ca³kuj¹cy z inercj¹ I rzêdu. T = const, Ti = 0.3');



legend('k=1','k=0.5','k=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);
t=logspace(-2,2,10000);

k=1;
T=1;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);
hold on

k=1;
T=0.5;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);

k=1;
T=5;
Ti=0.3;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);

title('Charakterystyka Bodego, ca³kuj¹cy z inercj¹ I rzêdu. k = const, Ti = 0.3 ');



legend('T=1','T=0.5','T=5');

hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(3);
t=logspace(-2,2,10000);

k=1;
T=1;
Ti=0.1;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);
hold on

k=1;
T=1;
Ti=1;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);

k=1;
T=1;
Ti=2;
licz = [k];
mian = [T*Ti,Ti,0];
print_nyquist(licz,mian,t);

title('Charakterystyka Bodego, ca³kuj¹cy z inercj¹ I rzêdu. k = const, T = const ');



legend('Ti=0.5','Ti=1','Ti=2');



hold off;