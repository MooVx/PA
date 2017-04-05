function [ T1_best T2_best tau_best k_best G_best ] = calc_II( T1_dn,T1_up,T2_dn,T2_up,tau_dn,tau_up,k_dn, k_up,pomiary )
skok_T1 = 0.1;
skok_T2 = 0.1;
skok_k = 0.01;
skok_tau = 0.1;
s = tf('s');
krok=0.1;
calka_najlepsza = 100;
t=linspace(0,300,length(pomiary));

for T1 = T1_dn:skok_T1:T1_up
    for T2 = T2_dn:skok_T2:T2_up
        for tau = tau_dn:skok_tau:tau_up
            for k = k_dn:skok_k:k_up
                G= k*exp(-s*tau)/((T1*s+1)*(T2*s+1));
                G_y=step(G,t)';
                err=G_y-pomiary;
                err2=err.^2;
                calka_obecna=krok*sum(err2);

                if calka_obecna < calka_najlepsza
                    calka_najlepsza = calka_obecna;
                    T1_best = T1;
                    T2_best = T2;
                    tau_best = tau;
                    k_best = k;
                    G_best=G;
                end
            end
        end
    end
end

end

