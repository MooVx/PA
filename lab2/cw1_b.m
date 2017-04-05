close all;
figure(1);

t=logspace(-3,3,10000);
% k=1;
% T=1;
% licz = [k];
% mian = [T 1];
% print_bode(licz,mian,t);
% hold on

k=0.5;
T=1;
licz = [k];
mian = [T 1];
print_bode(licz,mian,t);
bode_as(licz,mian);
% k=2;
% T=1;
% licz = [k];
% mian = [T 1];
% print_bode(licz,mian,t);
% 
% title('Charakterystyka Bodego inercyjny I rz¹d. T = const');
%  
%  
% legend('k=1','k=0.5','k=2');
% 
% hold off;
% 
% figure(2);
% k=1;
% T=1;
% 
% k=1;
% T=1;
% licz = [k];
% mian = [T 1];
% print_bode(licz,mian,t);
% hold on
% 
% k=1;
% T=0.5;
% licz = [k];
% mian = [T 1];
% print_bode(licz,mian,t);
% 
% k=1;
% T=2;
% licz = [k];
% mian = [T 1];
% print_bode(licz,mian,t);
% 
% title('Charakterystyka Bodego inercyjny I rz¹d. k = const');
%  
%  
% 
% legend('T=1','T=0.5','T=2');
% 
% hold off;