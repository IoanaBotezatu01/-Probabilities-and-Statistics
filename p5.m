X1=[46 37 39 48 47 44 35 31 44 37];
X2=[35 33 31 35 34 30 27 32 31 31];
n1=length(X1);
n2=length(X2);
alpha=0.05;
[h,p,ci,stats]=vartest2(X1,X2,'Alpha',alpha);
if h==0
  fprintf('H0 is rejected.The population variances do not differ\n');
else
  fprintf('H0 is rejected.The population variances differ\n');
endif
%
q1=finv(alpha/2,stats.df1,stats.df2);
q2=finv(1-alpha/2,stats.df1,stats.df2);
fprintf('observed value is:%1.4f\n',stats.fstat);
fprintf('P-value is %1.4f\n', p);
fprintf('Rejection region R is (-inf, %3.4f) U (%3.4f, inf)\n', q1, q2);
fprintf('\n\n');


%%---B---
m1=mean(X1)-mean(X2)- tinv(1-alpha/2,n1+n2-2)*sqrt(var(X1)/n1+var(X2)/n2);

m2=mean(X1)-mean(X2)+tinv(1-alpha/2,n1+n2-2)*sqrt(var(X1)/n1+var(X2)/n2);

fprintf('The confidence interval is (%3.4f, %3.4f)\n', m1, m2);


