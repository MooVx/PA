close all;

k=1;
T1=1;
T2=1.5;
t=0:0.01:10;

licz = [k];
mian = [T1*T2,T1+T2, 1];
print_step(licz,mian,t);
% hold on
% 
% k=0.5;
% T1=0.5;
% T2=1;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% 
% k=2;
% T1=0.5;
% T2=1;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% 
% title('Odpowiedü na skok jednostkowy, inercyjny II rzπd. T1 = const, T2 = const');
% xlabel('t');
% ylabel('y(t)');
% 
% legend('k=1','k=0.5','k=2');
% hold off;
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% figure(2);
% t=0:0.01:10;
% 
% k=1;
% T1=0.9;
% T2=1;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% hold on
% 
% k=1;
% T1=0.5;
% T2=1;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% 
% k=1;
% T1=2;
% T2=1;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);

% title('Odpowiedü na skok jednostkowy, inercyjny II rzπd. k = const, T2 = const ');
xlabel('t');
ylabel('y(t)');

% legend('T1=0.9','T1=0.5','T1=2');

% hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 
% figure(3);
% t=0:0.01:10;
% 
% k=1;
% T1=1;
% T2=0.9;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% hold on
% 
% k=1;
% T1=1;
% T2=0.5;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% 
% k=1;
% T1=1;
% T2=2;
% licz = [k];
% mian = [T1*T2,T1+T2, 1];
% print_step(licz,mian,t);
% 
% title('Odpowiedü na skok jednostkowy, inercyjny II rzπd. k = const, T1 = const ');
% xlabel('t');
% ylabel('y(t)');
% 
% legend('T2=0.9','T2=0.5','T2=2');
% 
% %patrz na transmitancje, T1 i T2 zmieniajπ dok≥adnie to samo
% 
% hold off;