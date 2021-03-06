load pomiary
s = tf('s');
t=linspace(0,300,length(pomiary));

% k=1.071;
% T=30;
% n=2;

tic()
[ T_best k_best n_best G_best ] = calc_III(1,100,1.068,1.072,1,10,pomiary);
toc()

% G_best= k/((T*s+1)^n)

figure(1);
plot(t,pomiary);
hold on;
step(G_best,t);
hold off;

G_y=step(G_best,t)';
err=G_y-pomiary;
err2=err.^2;
calka_obecna=0.1*sum(err2)
   

figure(2);
lsim([1],[1,0],err2,t)