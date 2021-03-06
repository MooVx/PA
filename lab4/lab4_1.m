s=tf('s');
t=linspace(0,10,10000);

k=2;
Ti=10;

PI=k*(1+1/(Ti*s))

y = step(PI,t);
plot(t,y);
axis([0 10 0 5]);
hold on;

k=1;
Ti=10;
PI=k*(1+1/(Ti*s));
y = step(PI,t);
plot(t,y);

title('PI - Ti=10');
legend('k=2','k=1');

hold off;


figure(2);

k=1;
Ti=10;

PI=k*(1+1/(Ti*s))

y = step(PI,t);
plot(t,y);
axis([0 10 0 5]);
hold on;

k=1;
Ti=5;
PI=k*(1+1/(Ti*s));
y = step(PI,t);
plot(t,y);

title('PI - k=1');
legend('Ti=10','Ti=5');

hold off;
%%%%%%%%%%%%nesquik

figure(3)
k=2;
Ti=10;
t=logspace(-2,2,10000);

PI=k*(1+1/(Ti*s))

nyquist(PI,t);
axis([-2 8 -4 2]);
hold on;

k=1;
Ti=10;
PI=k*(1+1/(Ti*s));
nyquist(PI,t);

title('PI - Ti=10');
legend('k=2','k=1');

hold off;


figure(4);

k=1;
Ti=10;

PI=k*(1+1/(Ti*s))

nyquist(PI,t);
axis([-2 8 -4 2]);
hold on;

k=1;
Ti=5;
PI=k*(1+1/(Ti*s));
nyquist(PI,t);
title('PI - k=1');
legend('Ti=10','Ti=5');

hold off;

%%%%% bode


figure(5)
k=2;
Ti=10;
t=logspace(-2,2,10000);

PI=k*(1+1/(Ti*s))

bode(PI,t);
%axis([-2 8 -4 2]);
hold on;

k=1;
Ti=10;
PI=k*(1+1/(Ti*s));
bode(PI,t);

title('PI - Ti=10');
legend('k=2','k=1');

hold off;


figure(6);

k=1;
Ti=10;

PI=k*(1+1/(Ti*s))

bode(PI,t);
% axis([-2 8 -4 2]);
hold on;

k=1;
Ti=5;
PI=k*(1+1/(Ti*s));
bode(PI,t);
title('PI - k=1');
legend('Ti=10','Ti=5');

hold off;

