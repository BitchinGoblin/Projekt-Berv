%Skapa graf
load('Projekt_initial_data.mat')
plot(roadster_speed_kmph,roadster_consumption_Whpkm)
title('Roadster energiförbrukning per hastighet');
ylabel('Wh/km');
xlabel('km/h');
grid on