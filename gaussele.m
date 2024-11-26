A=[pi,sqrt(2),-1,1;exp(1),-1,1,2;1,1,-sqrt(3),1;-1,-1,1,-sqrt(5)];
B=[0,1,2,3];
n=4;
for i=1:n
    for j=i+1:n
        f=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-f*A(i,:);
        B(j)=B(j)-f*B(i);
    end
end
disp(A);
disp(B);
x=zeros(n,1);
x(n)=B(n)/A(n,n);
for i=n-1:-1:1
    x(i)=(B(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
end
disp(x);