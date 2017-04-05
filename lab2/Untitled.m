close all;
clear all;
s= tf('s')

t=logspace(-2,2,10000);
k=0.5;
T=1;
tau=1;
G =  k*exp(-tau*s)/(T*s+1)
  bode(G, t);
  xlim([t(1) t(10000)]);
ylim([-110 0]);
hold on;

licz = [k];
mian = [T 1];
 print_bode(licz,mian,t);
 bode((k*exp(-tau*s)), t);
legend('z opó¿nieniem','bez opóŸnienia','czyste opóŸnienie')
hold off