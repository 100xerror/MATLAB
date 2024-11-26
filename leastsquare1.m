x=[-2;-1;0;1;2];
y=[15;1;1;3;19];
z=fit(x,y,'poly1');
k=fit(x,y,'poly2');
plot(z);
hold on
plot(k);
title('Least Square Approximation');