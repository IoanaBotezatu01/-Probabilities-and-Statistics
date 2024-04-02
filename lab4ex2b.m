
N=input("Number of simulations:");
p=input("Give a probability between 0 and 1:");
n=input("Number of trials:");
U=rand(n,N);
X=sum(U<p);
k=0:n;
p_k=binopdf(k,n,p);
U_X=unique(X);
n_X=hist(X,length(U_X));
rel_freq=n_X/N;
clf;
plot(U_X,rel_freq,'*',k,p_k,'ro')

