%graf anna
load('speedanna.mat');
plot(distance_km,speed_kmph,'r')
grid on;
hold on;
%graf elsa
load('speedelsa.mat')
plot(distance_km,speed_kmph,'g') %Annas distance och speed försvinner, men de är redan plottade
hold off;
title('Annas och Elsas hastighet mot sträcka')
xlabel('km')
ylabel('km/h')
