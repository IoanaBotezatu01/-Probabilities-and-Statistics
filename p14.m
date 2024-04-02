%a
alpha=0.05;
X1 = [4.6 0.7 4.2 1.9 4.8 6.1 4.7 5.5 5.4];

X2 = [2.5 1.3 2.0 1.8 2.7 3.2 3.0 3.5 3.4];
tail=0;
[h, p, ci, stats] = vartest2(X1, X2, 'Alpha', alpha);

if h==0
  fprintf('H0 is not rejected.The population variances do not differ\n');
else
  fprintf('H0 is rejected.The population variances differ\n');
endif
%
q1=finv(alpha/2,stats.df1,stats.df2);
q2=finv(1-alpha/2,stats.df1,stats.df2);
fprintf('Observed value is %1.4f\n', stats.fstat);
fprintf('P-value is %1.4f\n', p);
fprintf('Rejection region R is (-inf, %3.4f) U (%3.4f, inf)\n', q1, q2);
fprintf('\n\n');

%b
[h,p,ci,stats]=ttest2(X1,X2,'Alpha',alpha);
q=tinv(1-alpha,stats.df);

if h==0
  fprintf('H0 is not rejected\n');
else
  fprintf('H0 is rejected\n');
endif
  %

fprintf('Rejection region R is (%3.4f, inf)\n', q);
fprintf('P-value is %1.4f\n', p);
fprintf('Observed value is %1.4f\n', stats.tstat);
