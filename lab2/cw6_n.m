close all;

s= tf('s')
t=logspace(-3,3,10000);
k=1;
T=1;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);
hold on

k=0.5;
T=1;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);


k=2;
T=1;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);

title('Charakterystyka Nyquista, inercyjny I rzêdu z opó¿nieniem T = const');



legend('k=1','k=0.5','k=2');
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(2);
k=1;
T=1;
t=logspace(-3,3,10000);
k=1;
T=1;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);
hold on

k=1;
T=0.5;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);

k=1;
T=2;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);

title('Charakterystyka Nyquista, inercyjny I rzêdu z opó¿nieniem k = const');



legend('T=1','T=0.5','T=2');

hold off;
%%%%%%%%%%%%%%%%%%
figure(3);
k=1;
T=1;
t=logspace(-3,3,10000);
k=1;
T=1;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);
hold on

k=1;
T=1;
tau=0.2;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);

k=1;
T=1;
tau=3;
G =  k*exp(-tau*s)/(T*s+1)
nyquist(G,t);

title('Charakterystyka Nyquista, inercyjny I rzêdu z opó¿nieniem k = const, T=const');



legend('tau=1','tau=0.2','tau=3');

hold off;