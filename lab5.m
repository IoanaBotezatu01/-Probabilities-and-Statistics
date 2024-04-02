X=[ 1 2 3 4 5 6 ...
6 8 9 10 11 12 ...
13 14 15 16 17 18 ...
19 20 21 22 23 24 ...
25 26 27 28 29 30 ...
31 32 33 34 35 36];

n=length(X);

%B.1.a
one_minus_alpha=input("Enter the confidence level:");
alpha=1-one_minus_alpha;
sigma=5;
m1=mean(X)-(sigma/sqrt(n))*norminv(1-alpha/2,0,1);
m2=mean(X)-(sigma/sqrt(n))*norminv(alpha/2,0,1);

%sigma-teorethical standard deviation
%the confidence interval for the ... when sigma is known is
printf('(m1,m2)=(%4.3f,%4.3f)',m1,m2);

%B.1.b
m1b=mean(X)-(std(X)/sqrt(n))*tinv(1-alpha/2,n-1);
m2b=mean(X)-(std(X)/sqrt(n))*tinv(alpha/2,n-1);
%the confidence interval for the mean when...
printf('  (m1b,m2b)=(%4.3f,%4.3f)',m1b,m2b);

%B.1.c
%s squared is the sequence variance
v1=((n-1)*(var(X)))/chi2inv(1-alpha/2,n-1);
v2=((n-1)*(var(X)))/chi2inv(alpha/2,n-1);
printf('  (v1,v2)=(%4.3f,%4.3f)',v1,v2);

s1=sqrt(v1);
s2=sqrt(v2);
printf('  (s1,s2)=(%4.3f,%4.3f)',s1,s2);

