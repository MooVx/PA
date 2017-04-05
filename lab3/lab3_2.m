load pomiary
s = tf('s');

k=1.071
tau=14;
T1=16;
T2=38;

G= k*exp(-s*tau)/((T1*s+1)*(T2*s+1))
t=linspace(0,300,length(pomiary));

plot(t,pomiary);
hold on;
step(G,t);
tic()
[ T1_best T2_best tau_best k_best,G_best ] = calc_II(15,17,37,39,12,16,1.068,1.073,pomiary);
toc()

% hold off;
% step(G_best,t);
% G_y=step(G_best,t)';
% err=G_y-pomiary;
% err2=err.^2;
% calka_obecna=0.1*sum(err2);
   

hold off;

% figure(2);
% lsim([1],[1,0],err2,t)