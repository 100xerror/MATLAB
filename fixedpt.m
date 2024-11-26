syms x;
g=@(x)exp(-x);
i=1;
N=100;
x0=1;
tol=0.0001;
while(i<=N)
    x1=g(x0);
    if((abs(x1-x0)/x1)<tol)
        break;
    end;
    i=i+1;
 x0=x1;
end
disp(x1);
    