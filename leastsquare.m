x=[2;3;4;5];
y=[27.8;62.1;110;161];
z=fit(x,y,'power1');
plot(z);
hold on
plot(z,x,y);
title('Least Square Approximation');
