%Skapa graf
load('Projekt_initial_data.mat')
y=polyval(polyfit(anna_distance_km,anna_speed_kmph,1),anna_distance_km)
plot(anna_distance_km,anna_speed_kmph,anna_distance_km,y)
title('Annas hastighet som funktion av strackan');
ylabel('km/h');
xlabel('km');
grid on
