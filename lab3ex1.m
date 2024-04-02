%FISHER'S LAW

m=input("m(int)=");
n=input("n(int)=");
alpha=input("alpha(between 0 and 1)=");
beta=input("beta(between 0 and 1)=");
p1=fcdf(0,m,n);
p2=1-fcdf(0,m,n);
p3=1-fpdf(0,m,n);
x_alpha=finv(alpha,m,n);
x_beta=finv(1-beta,m,n);

%NORMAL LAW
%----||----
%instead of "f" is "norm"

%STUDENT LAW
%----||----
%instead of "f" is "t"

