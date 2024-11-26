f=@(x)x*log10(x)-1.2;
a=input('Enter a number');
b=input('Enter a number');
if f(a)*f(b)>0
    disp('Wrong choice of elements');

else
    p=(a+b)/2;
    e=abs(b-a);
     
    while(e>5*10^-5)
        if  f(a)*f(p)<0
           
b=p;
        else 
            a=p;
        end
        p=(a+b)/2;
        e=abs(b-a);
        
    end
    disp(p);
    disp(cnt);
end


