
for i=1:50
    a=int16(rand*3)
    if a==1
        wegrzyn='debil'
    else
        wegrzyn='tez debil'
    end


    switch a
        case 1
            roman = 'debil'
        case 2
            roman = 'debil'
        otherwise
            roman = 'sorry, inaczej nie moge: debil'
    end
end


for i=1:5,
    for j=1:4,
        A(i,j)=(i+j)/(i+j+1); 
    end
end

A


figure(2)
w=rand(50);
s=rand(50);
fplot('sin(x)',[0 20],'c') ;
hold 
fplot('cos(x)',[0 20],'r') ;
title('Wykresy')
ylabel('haha')
legend('sin','cos')
hold off








