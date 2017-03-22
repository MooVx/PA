function [] = print_impulse( licz, mian, t )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

sys = tf(licz,mian);
%printsys(licz,mian);

impulse(sys,t)

end

