%a
alpha=0.05;
X1=[1021 980 1017 988 1005 998 1014  985 995 1004 1030 1015 995 1023];
X2=[1070 970 993 1013 1006 1002 1014 997 1002 1010 975];

[h,p,ci,stats]=vartest2(X1,X2,'Alpha',alpha);
if h==0
  fprintf('H0 is not rejected\n');
else
  fprintf('H0 is rejected\n');
endif
%
q1=finv(alpha/2,stats.df1,stats.df2);
q2=finv(1-alpha/2,stats.df1,stats.df2);
fprintf('observed value is:%1.4f\n',stats.fstat);
fprintf('P-value is %1.4f\n', p);
fprintf('Rejection region R is (-inf, %3.4f) U (%3.4f, inf)\n', q1, q2);
fprintf('\n\n');

%b
[h,p,ci,stats]=ttest2(X1,X2,'Alpha',alpha);
if h==0
  fprintf('H0 is not rejected.The mean of Supplier A is greater than the mean of Supplier B\n');
else
  fprintf('H0 is rejected.The mean of Supplier A is NOT greater than the mean of Supplier B\n');
endif
%
q=tinv(1-alpha,stats.df);
fprintf('Rejection region R is (%3.4f,inf)\n',q);
fprintf('observed value is:%1.4f\n',stats.tstat);
