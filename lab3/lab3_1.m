load pomiary
k=1.071

t=linspace(0,300,length(pomiary));
plot(t,pomiary);
tic()
[ T_best tau_best k_best G_best ]=calc_I(40,44,24,26,1.06,1.074,pomiary);
toc()
% hold off;
step(G_best,t);
G_y=step(G_best,t)';
err=G_y-pomiary;
err2=err.^2;
calka_obecna=0.1*sum(err2);
   

hold off;

figure(2);
lsim([1],[1,0],err2,t)