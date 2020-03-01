function dt = logistic(t,n)
r = 0.1;
k = 100;

dt(1) = r*n*(1-n/k);
end