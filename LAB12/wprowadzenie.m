x=2
sqrt(x)
a=-0.00341   
b=20.03e-3
c=1+3i 
real(c)
imag(c)
x=1; y=2; z=3;
4/0
help sqrt
A= [0 2 -12
    7 6 1]
B= [ 1 2 3 4 5]
C= [3; 4; 5]
D= [2 -1; 3 0] + i*[3 1.5; -7 2]
A=[3 -1; 5 0]
B=[ 2 5 8]
C=[7;6]
D=[B; C A]
x= 1:1:6;
y= -1:0.2:1;
A=[1:1:10; 1:2:19]

X=1:5'
X=[1:5]'
Y=1+1:5
Y=1+[1:5]
pi
linspace(0,pi/2,10)
ab=[1:0.001:100];
X=[1 2 6 7 8 23 55 56 78]
A=[1:6
   7:12
   13 14 15 15 -1 -2
   0 4 5 9 2 1]
X(3:6)
A(1,:)
A(:,3)
A(3:4,2:5)
v=A(:)'
A(3,:)=[]
size(A)
n=size(A,1)
length(x)
length(x')

A=[1 2; -5 -14]
B=[1 1; 0 -7]
% (A*B).^(-1)*(A*B)
% C=(A+B')./2
x = [1 4]
A*x'

eye(3)
ones(3,5)
zeros(4,'like',c)
randn(2,3)
A=diag([1 2 3])
x= diag(A)'
inv(A)
numel(A)
ndims(A)
repmat(A,1,2)
A
reshape(A,3,3)
tril(A)
triu(A)
rot90(A)
H=randn(4,3)
%H(1,1)=0
% H= [1 2.5 3 4]
diff(H)

isempty(H)
isinf(H)


x=pi/3
sin(x)
cos(x)
asin(0.86602)
log10(-5)
x=3+4i

abs(x)
angle(x)
conj(x)
x=complex(4,4)
angle(x)
a=randn()*10
ceil(a)
floor(a)
round(a)
rem(a,2)
s='automatyka'
a=double(s)
s=char(a)
f=['podstawy ' s]
f(4)
s=deblank(s)
findstr('a',f)
upper(f)
strcat(f,'  loool kontaaktenacja')

int2str('a')
str2double('1.0053')


tic;
x=1:0.001:1000;
exp(2*sin(2*x))
toc


