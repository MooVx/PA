clear all;
close all;

N = 0.0840209255961917;
tau = 15;
k_obiekt = 1;
T_obiekt = 45;

Tosc = 53.6275
Kkr = 5.3695;

k = Kkr;
Ti =  1e+06;
Td = 0;


s=tf('s')

PID=k*(1+1/(Ti*s)+Td*s)

Obj=1/(45*s+1)

Del=exp(-s*tau)
obj_del=series(Del,Obj)
otw=series(PID,obj_del)
zam=feedback(otw,1)
t = 0:0.01:300;
step(zam,t)