x=[0 0.25 0.5 0.75];
y=[1 1.64 2.71 4.4816];
p=0.43;
n=length(x);
for i=1:n
    F(i,1)=y(i);
end
for i=2:n
   for j=i:n
       F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
   end
end
for i=1:n
    product(i)=1;
    for j=1:i-1
        product(i)=product(i)*(p-x(j));
    end 
end
sum=0;
for i=1:n
    sum=sum+(F(i,i)*product(i));
end
disp(sum);
