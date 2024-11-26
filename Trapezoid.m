a=0;
b=2;
N=input('Number of subintervals');
f=@(x)1/(1+x);
sum=0;
h=(b-a)/N;
for i=1:N-1 
    X=a+(h*i);
    sum=sum+(2*f(X));
end
sum=(sum+f(a)+f(b))*(h/2);
fprintf('Answer is %f',sum);
