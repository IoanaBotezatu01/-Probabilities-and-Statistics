pkg load statistics

%the prob law that x follow is binomial law
%p=15%=>0.5
x=1:1:3;
%c
p1=binopdf(0,3,0.5);
p2=1-binopdf(1,3,0.5);
%d
p3=binocdf(2,3,0.5);
p4=binocdf(1,3,0.5);
%e
p5=1-binopdf(0,3,0.5);
p6=1-binocdf(1,3,0.5);
%f

