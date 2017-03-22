function [] = print_step( licz, mian, t )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

sys = tf(licz,mian);
%printsys(licz,mian);

step(sys,t)

end

