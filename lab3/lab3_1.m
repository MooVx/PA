load pomiary

t=linspace(0,300,length(pomiary));
tic()
[ T_best tau_best k_best G_best ]=calc_I(40,44,24,26,1.06,1.074,pomiary);
toc()

figure(1);
plot(t,pomiary);
hold on
step(G_best,t);
hold off;

G_y=step(G_best,t)';
err=G_y-pomiary;
err2=err.^2;
calka_obecna=0.1*sum(err2);
   
figure(2);
lsim([1],[1,0],err2,t)