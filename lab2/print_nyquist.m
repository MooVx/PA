function [] = print_nyquist( licz, mian, t )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

sys = tf(licz,mian);

nyquist(sys,t);

end

