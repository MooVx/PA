function [ calka ] = solve_odp( k, Ti, Td, fig_n )
x2 = 239.7;
x1 = 25.27;
Tosc = (x2 - x1)/4;
Kkr = 5.3695;

sim('lab6');
figure(fig_n);

n = length(ScopeData(:,2))
krok = 0.01;


end

