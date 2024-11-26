syms x
f=@(x)x*log10(x)-1.2;
dif=diff(f,x);
dfx=inline(dif);

x0=input('Enter a  number');
N=input('Enter the number of iterations');
tol=5*10^-5;
i=1;
while(i<=N)
    x1=x0-f(x0)/dfx(x0);
    if abs((x1-x0)/x1)<tol
        break;
    end
    i=i+1;
    x0=x1;
end
root=x1;
disp(root);
