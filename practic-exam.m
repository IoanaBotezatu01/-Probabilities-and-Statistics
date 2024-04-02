%A. Find a 95% confidence interval for the average velocity of shells of this type.
X=[1001.7 975.0 978.3 988.3 978.7 988.9 1000.3 979.2 968.9 983.5 999.2 985.6];
n=length(X);
one_minus_alpha=0.95;
alpha=1-one_minus_alpha;
q1=mean(X)-(std(X)/sqrt(n))*tinv(1-alpha/2,n-1);
q2=mean(X)+(std(X)/sqrt(n))*tinv(1-alpha/2,n-1);

fprintf('The confidence interval is (%3.4f, %3.4f)\n', q1, q2);
fprintf('\n');

%B. At the 1% sinificance level,does the data suggest that ,on average,the muzzles are faster than 995 m/s?

alpha=0.01;
% Muzzles_v >995 =>right tailed test
[h,p,ci,stats]=ttest(X,995,'alpha',alpha,'tail,'right');
if h==0
  fprintf('H0 is not rejected.The muzzles are not faster than 995 m/s\n');
else
  fprintf('H0 is rejected.The muzzles are faster than 995 m/s\n');
endif
%
q=tinv(1-alpha,stats.df);
fprintf('observed value is:%1.4f\n',stats.tstat);
fprintf('P-value is %1.4f\n', p);
fprintf('Rejection region R is ( -inf, %3.4f)\n',  q);
