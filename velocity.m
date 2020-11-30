function [v] = velocity(x,route)
%funktion för att hitta hastighet efter x km
%km/h=velocity(distans, rutt) måste använda anna eller elsa
load(route);
d=distance_km;
h=speed_kmph;

for i=1:length(x)
  %kollar att varje distans finns. Ligger punkten utanför-> funktionen avslutas  
if x(i) < min(d) || x(i)>max(d)
 disp( 'Detta värde ligger utanför "distans-datan" x->[0,65]')
 return
else
 end
%använder findex/findpos för att hitta indexet innnan och efter den sökta
%punkten
    x1=findpos(d,x(i));
    x0=x1-1;
    
    %hittar hastigheten med dessa index
    y0=h(x0);
    y1=h(x1);
   
 %newton interpolation
 %Y=a0+a1(d(x)-d(x0))
 
%sätter x till x0 och y till y0 -> a1=0
 a0=y0; 
 
 %sätter x till x1 och y till y1
 a1=(y1-a0)/(d(x1)-d(x0)); %gör om index till värden i distans-vektorn
 
 v(i)=a0+a1*(x(i)-d(x0)); %lagrar svaren i vektorn v med index i -> loopen börjar om och lagrar det i plats i+1 osv

end

end

