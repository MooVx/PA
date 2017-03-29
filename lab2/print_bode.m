function [] = print_bode( licz, mian, t )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);
end

