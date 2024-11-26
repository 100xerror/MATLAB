A=[4,1,0;1,20,1;0,1,4];
x0=[1;1;1];
n=100;
e=0.001;
for i=1:n
    y=A*x0;
    k=max(y);
    x1=y/k;
    if max(abs(x1-x0))<e
        break;
    end;
    x0=x1;
end
disp(x1);