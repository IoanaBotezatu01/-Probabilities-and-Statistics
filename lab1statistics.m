pkg load statistics

%we ask the user to imput the file
%required value for the binomial
n=input("Give the nb. of trials n=");
p=input("Give the prob. of success p=");
%n is natural nb.
%p is a value between 0 and 1
% x is the nb. of success,x- values of the pdf
x=0:1:n;


px=binopdf(x,n,p);
plot(x,px,'r+')
hold on
%shows many graphs
xx=0:0.01:n;
fx=binocdf(xx,n,p);
plot(xx,fx,'b');

