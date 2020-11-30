%graf energi mot hastighet
%roadsterplot
load('roadster.mat')
plot(speed_kmph,consumption_Whpkm)
title('Energikonsumption över hastighet')
xlabel('km/h')
ylabel('Wh/km')
grid on