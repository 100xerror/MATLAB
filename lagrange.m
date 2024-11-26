X=[110 130 160 190];
Y=[10.8 8.1 5.5 4.8];
x=input('Enter the value of X=');
n=8;
for i=1:n
    l(i)=1;
    for j=1:n
        if j~=i
            l(i)=l(i)*(p-X(j))/(X(i)-X(j));
        end
    end
end
sum=0;
for i=1:n
    sum=sum+l(i)*Y(i);
end
disp(sum);
