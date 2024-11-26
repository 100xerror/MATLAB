n=4;
N=100;
a=[4,1,-1,1;1,4,-1,-1;-1,-1,5,1;1,-1,1,3];
b=[-2;-1;0;1];
xnew=[0 0 0 0];
x=[0;0;0;0];
tol=0.00001;
for i=1:N
    for j=1:n
        sum1=0;
        sum2=0;
        for k=1:j-1
            sum1=sum1+a(j,k)*xnew(k);
        end
        for k=j+1:n
            sum2=sum2+a(j,k)*x(k);
        end
        xnew(j)=(b(j)-(sum1+sum2))/a(j,j);
    end
    if norm(xnew-x)<=tol
        break;
    end
        x=xnew;
end
disp(x);
   


