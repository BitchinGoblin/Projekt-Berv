function [v] = velocityAB(x,route)
%funktion för att hitta hastighet efter x km
%km/h=velocity(punkt, rutt)
load('speedanna.mat'); %laddar in speedanna och speedelsa
danna=distance_km;
sanna=speed_kmph;
load('speedelsa.mat');
delsa=distance_km;
selsa=speed_kmph;

if route==1 %gör ett val beroende på vilken rutt man har valt
    d=danna; %d=disans h=hastighet
    h=sanna;
elseif route==2
    d=delsa;
    h=selsa;
else
    disp('Error, välj 1 -> anna eller 2-> elsa, som "route"') %bara 2 olika inputs är ok, 1 eller 2. Annars error.
    v=NaN;
end
%använder findex/findpos för att hitta indexet innna och efter sökta
%punkten
    x0=findex(d,x)-1;
    x1=findex(d,x);
    
    %hittar hastigheten i dessa punkter
    y0=h(x0);
    y1=h(x1);
   
 %newton interpolation
 %Y=a0+a1(a-x0)

 a0=y0;
 a1=(y1-y0)/(x1-x0);
 %y=a0-a1*x0+a1x
 v=a0-a1*(x-d(x0));
end