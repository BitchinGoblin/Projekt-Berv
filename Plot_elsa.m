%Skapa graf
load('Projekt_initial_data.mat')
plot(elsa_distance_km,elsa_speed_kmph)
title('Elsas hastighet som funktion av strackan');
ylabel('km/h');
xlabel('km');
grid on