function [] = kryterium_N(k,Ti,Td)

    T=0.01;
    s=tf('s');
    obiekt=10/(s^3+2*s^2+2*s+1);
    reg=k*(1+1/(Ti*s)+(Td*s)/(T*s+1));
    otwarty=series(obiekt,reg);
    nyquist(otwarty);
%      axis([-10 15 -10 10]);
    title('Charakterystyka Nyquista, uklad stabilny');
    legend(['k=', num2str(k),' Ti=', num2str(Ti),' Td=', num2str(Td), ' T=', num2str(T)])

end
