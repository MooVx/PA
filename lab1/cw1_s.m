close all;

k=1;
T=1;
t=0:0.01:10;
k=1;
T=1;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);

[x y]=step(sys,t);
plot(y,x);
hold on

alfa = (y(2)-y(1))/(x(2)-x(1));
tangent = x*alfa;
plot(tangent,x);

xlabel('t');
ylabel('y(t)');

hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 
% figure(2);
% k=1;
% T=1;
% t=0:0.01:10;
% k=1;
% T=1;
% licz = [k];
% mian = [T 1];
% print_step(licz,mian,t);
% hold on
% 
% k=1;
% T=0.5;
% licz = [k];
% mian = [T 1];
% print_step(licz,mian,t);
% 
% k=1;
% T=2;
% licz = [k];
% mian = [T 1];
% print_step(licz,mian,t);
% 
% title('Odpowiedü na skok jednostkowy, inercyjny I rzπd. k = const');
% xlabel('t');
% ylabel('y(t)');
% 
% legend('T=1','T=0.5','T=2');
% 
% hold off;