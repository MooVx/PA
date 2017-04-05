function [ T_best k_best n_best G_best ] = calc_III( T_dn, T_up, k_dn, k_up, n_dn, n_up, pomiary )
skok_T = 0.2;
skok_k = 0.001;
skok_n = 1;
s = tf('s');
krok=0.1;
calka_najlepsza = 1000;
t=linspace(0,300,length(pomiary));

for T = T_dn:skok_T:T_up
    for k = k_dn:skok_k:k_up
        for n = n_dn:skok_n:n_up
            G= k/((T*s+1)^n);
            G_y=step(G,t)';
            err=G_y-pomiary;
            err2=err.^2;
            calka_obecna=krok*sum(err2);
            
            if calka_obecna < calka_najlepsza
                calka_najlepsza = calka_obecna;
                T_best = T;
                n_best = n;
                k_best = k;
                G_best=G;
            end
        end
    end
end

end

