f=@(x)1/(1+x);
a=0;
b=2;
N=input('Enter the number of sub intervals');
if rem(N,2)~=0
    fprintf('Intervals must be even');
else
    sum=0;
    h=(b-a)/N;
    for i=1:N-1
        X=a+(h*i);
        if rem(i,2)==0
            sum=sum+(2*f(X));
        else
            sum=sum+(4*f(X));
        end
    end
    sum=(sum+f(a)+f(b))*h/3;
    fprintf('%f',sum);
end