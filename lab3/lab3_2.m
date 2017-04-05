load pomiary
s = tf('s');
t=linspace(0,300,length(pomiary));

tic()
%[ T1_best T2_best tau_best k_best,G_best ] = calc_II(15,17,37,39,12,16,1.069,1.072,pomiary);
toc()


figure(1);
plot(t,pomiary);
hold on;
step(G_best,t);
hold off;

G_y=step(G_best,t)';
err=G_y-pomiary;
err2=err.^2;
calka_obecna=0.1*sum(err2);
   

figure(2);
lsim([1],[1,0],err2,t)