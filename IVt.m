f=@(x)x*log10(x)-1.2;
N=input('Enter a number');
h=input('Enter a number');
for i=-N:h:N
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
    end 
end
fprintf('Answer is (%d,%d)',a,b);