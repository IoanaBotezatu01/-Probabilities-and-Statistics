X1=[22.4 21.7 ...
24.5 23.4 ...
21.6 23.3 ...
22.4 21.6 ...
24.8 20.0];

X2=[17.7 14.8 ...
19.6 19.6 ...
12.1 14.8 ...
15.4 12.6 ...
14.0 12.2];

one_minus_alpha=input("Enter the confidence level:");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                D
alpha=1-one_minus_alpha;
sigma=5;

n1=length(X1);
n2=length(X2);
sp=sqrt(((n1-1)*var(X1) +(n2-1)*var(X2))/( n1+n2+2));
n1=mean(X1)-mean(X2)-tinv(1-alpha/2,n1+n2-2)*sp*sqrt(1/n1+1/n2);
n2=mean(X1)-mean(X2)+tinv(1-alpha/2,n1+n2-2)*sp*sqrt(1/n1+1/n2);

%the conf int.for the diff of the th means when sigma 1 eq sigma2 unknown is
printf('  (n1,n2)=(%4.3f,%4.3f)',n1,n2);
c=(var(X1)/n1)/(var(X1)/n1+var(X2)/n2);
aux=c*c/(n1-1)+(1-c)*(1-c)/(n2-1);
n=1/aux;
printf('  (n)=(%4.3f)',n);




