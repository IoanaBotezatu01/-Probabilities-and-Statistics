X = [3.26 1.89 2.42 2.03 3.07 2.95 1.39 3.06 2.46 3.35 1.56 1.79 1.76 3.82 2.42 2.96];
n = length(X);
one_minus_alpha=0.95;
alpha=1-one_minus_alpha;
q1=mean(X)-(std(X)/sqrt(n))*tinv(1-alpha/2,n-1);
q2=mean(X)+(std(X)/sqrt(n))*tinv(1-alpha/2,n-1);

fprintf('The confidence interval is (%3.4f, %3.4f)\n', q1, q2);
fprintf('\n\n');
%--B--
alpha=0.01;
[h,p,ci,stats]=ttest(X,3,'Alpha',alpha,'tail','left');
%miu <3=> left tailed test
if h==0
  fprintf('H0 is not rejected.The particles are not smaller than 3\n');
else
  fprintf('H0 is rejected.The particles are smaller than 3\n');
endif
%
q=tinv(alpha,stats.df);
fprintf('observed value is:%1.4f\n',stats.tstat);
fprintf('P-value is %1.4f\n', p);
fprintf('Rejection region R is ( -inf, %3.4f)\n',  q);
fprintf('\n\n');

