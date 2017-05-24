function [ calka , blad , przeregulowanie , czas_regulacji ] = solve_odp( k, Ti, Td, fig_n )

    x2 = 239.7;
    x1 = 25.27;
    Tosc = (x2 - x1)/4;
    Kkr = 5.3695;
    tau = 15;

    sim('lab6');
%     figure(fig_n);
%     plot(ScopeData(:,1),ScopeData(:,2));
%     hold on
%     line([0 300],[1 1]);
%     hold off

    n = length(ScopeData(:,2));
    krok = ScopeData(2,1)-ScopeData(1,1);

    blad = abs(ScopeData(n,2)-1);
    przeregulowanie = max((ScopeData(:,2)-1));

    wektor_calka = (ScopeData(:,2)-1).^2;

    calka = 0;
    for i=1:n-1
    calka = calka + wektor_calka(i)+wektor_calka(i+1);
    end
    calka = calka*(krok/2);

    if blad > 0.01
        czas_regulacji = 0
    else
        for i=n:-1:1
            if abs(ScopeData(i,2)-1) > 0.01
                indeks = i;
                czas_regulacji = (indeks/n)*300
                break
            end
       end
    end
    
    
    
end

