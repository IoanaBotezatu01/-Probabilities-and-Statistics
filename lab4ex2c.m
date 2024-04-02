N=input("Number of simulations:");
p=input("Give a probability between 0 and 1:");
X=0:N
for i=1:N
  X(i)=0;
  while rand>=p
    X(i)=X(i)+1;
   endwhile
   endfor
k=0:20;
p_k=geopdf(k,p)
U_X=unique(X);
n_X=hist(X,length(U_X));
rel_freq=n_X/N;
clf;
plot(U_X,rel_freq,'*',k,p_k,'ro')
