p=input("Choose a number etween 0.05 and 0.95:");
n=input("Choose a large number n:");

for n=1:3:100
  k=0:n;
  y=binopdf(k,n,p);
  plot(k,y)
  pause(os)
endfor
%get n and get p from the use s.t constraints our verify
%prepare lambda=n*p
%draw a binopdf and a poissonpdf


