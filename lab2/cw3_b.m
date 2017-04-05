% close all;
% 
% k=1;
% T0=1;
% ksi=0.3;
 t=logspace(-1,1,10000);
% 
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% hold on
% 
% k=0.5;
% T0=1;
% ksi=0.3;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% 
% k=2;
% T0=1;
% ksi=0.3;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% 
% title('Charakterystyka Bodego, oscylacyjny II rz¹d. T0 = const, ksi = 0.3');
%  
%  
% 
% legend('k=1','k=0.5','k=2');
% hold off;
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% figure(2);
% t=logspace(-3,3,10000);
% k=1;
% T0=1;
% ksi=0.3;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% hold on
% 
% k=1;
% T0=0.5;
% ksi=0.3;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% 
% k=1;
% T0=2;
% ksi=0.3;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% 
% title('Charakterystyka Bodego, oscylacyjny II rz¹d. k = const, ksi = 0.3 ');
%  
%  
% 
% legend('T0=1','T0=0.5','T0=2');
% 
% hold off;
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
% figure(3);
% 
% k=1;
% T0=1;
% ksi=1;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% hold on
% 
% k=1;
% T0=1;
% ksi=0.5;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);
% 
% k=1;
% T0=1;
% ksi=0;
% licz = [k];
% mian = [T0*T0, 2*ksi*T0,1];
% print_bode(licz,mian,t);

k=1;
T0=1;
ksi=0.25;
licz = [k];
mian = [T0*T0, 2*ksi*T0,1];
print_bode(licz,mian,t);
% bode_as(licz,mian);
% 
% title('Charakterystyka Bodego, oscylacyjny II rz¹d. k = const, T0 = const ');
%  
%  
% 
% legend('ksi=1','ksi=0.5','ksi=0','ksi=2');
% 
% %patrz na transmitancje, T0 i ksi zmieniaj¹ dok³adnie to samo
% 
% hold off;