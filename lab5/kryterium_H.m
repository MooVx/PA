function [ M_z ] = kryterium_H(k, Ti, Td)

T = 0.01;

liczob = 10;
mianob = [1 2 2 1];
liczreg = k*[Ti*T+Ti*Td Ti+T 1];
mianreg = [Ti*T Ti 0];
[L_o,M_o] = series(liczob,mianob,liczreg,mianreg);
[L_z,M_z]=cloop(L_o,M_o,-1);
printsys(L_z,M_z)

%sprawdzenie WK
if(M_z(1)>0 && M_z(2)>0 && M_z(3)>0 && M_z(4)>0&& M_z(5)>0&& M_z(6)>0)
    wsk=1;
elseif(M_z(1)<0 && M_z(2)<0 && M_z(3)<0 && M_z(4)<0 && M_z(5)<0&& M_z(6)<0 )
    wsk=1;
else
    msgbox('WK niespelniony => uklad niestabilny');
    wsk = 0;
end

if wsk == 1;
    msgbox('WK spelniony');
    %minory
    H1 = M_z(2);
    
    H2 =  [ M_z(2), M_z(4);
            M_z(1), M_z(3)];
        
    H3 =  [ M_z(2), M_z(4), M_z(6)  ;
            M_z(1), M_z(3), M_z(5)  ;
            0     , M_z(2), M_z(4)  ];
        
    H4 =  [ M_z(2), M_z(4), M_z(6),0       ;
            M_z(1), M_z(3), M_z(5),0       ;
            0     , M_z(2), M_z(4),M_z(6)  ;
            0     , M_z(1), M_z(3),M_z(5)  ];

    H5 =  [ M_z(2), M_z(4), M_z(6),0     ,0       ;
            M_z(1), M_z(3), M_z(5),0     ,0       ;
            0     , M_z(2), M_z(4),M_z(6),0       ;
            0     , M_z(1),M_z(3) ,M_z(5),0       ;
            0     , 0     ,M_z(2) ,M_z(4),M_z(6)  ];
        
    if det(H1)>0 && det(H2)>0 && det(H3)>0 && det(H4)>0 && det(H5)>0
        msgbox('Uklad stabilny');
    else
        msgbox('Uklad niestabilny');
    end
end

t=linspace(0,5,1500);
step(L_z,M_z,t);
legend(['k=', num2str(k),' Ti=', num2str(Ti),' Td=', num2str(Td), ' T=', num2str(T)]);


end

