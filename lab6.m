X=[ 1 2 3 4 5 6 ...
6 8 9 10 11 12 ...
13 14 15 16 17 18 ...
19 20 21 22 23 24 ...
25 26 27 28 29 30 ...
31 32 33 34 35 36];

n=length(X);

alpha=input("Enter the significance value:");
% the null hip. u=8.5(it s considered together with u >8.5)
%.... u<8.5(the standars is not met)
%left tail test for the mean
printf("this is the left tail test for the mean when sigma is known    ");

m0=8.5; %the test value

sigma=5;

H=ztest(X,m0,sigma,'alpha',alpha,'tail','left')

zalpha=norminv(alpha,0,1);
RR=[-inf zalpha];
printf("H is %d", H);
if(H==1)
printf("The null hypothesys is rejected;the data sugests that the standard is not met");
else
printf("The null hypothesys is not rejected  ;the data sugests that the standard is met   ;the rejection reagion is (%4.3f,%4.3f",RR);
endif

printf("the... val is %4.3f",zaplha);
%printf("The pval of the test is %4.3f",pval);

% 1...ttest
%vartest2
%ttest2

%righttailtest(sigma,unkown)
%solution for a-2 tail test for comparing variances

%right tailed test for the difference of means
