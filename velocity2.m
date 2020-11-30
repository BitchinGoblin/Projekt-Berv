function [v] = velocity2(distans,vektor)
load('Projekt_initial_data.mat')

    if vektor'*vektor==anna_speed_kmph'*anna_speed_kmph
        distance=anna_distance_km;
    elseif  vektor==elsa_speed_kmph
        distance=elsa_distance_km;
    else error('fel vektor')
    end
    
    
    
ta1=findpos(distance,distans)-1; %hittar efter vilken positon stäckan kördes
ta2=findpos(distance,distans); %hittar innan vilken positon stäckan kördes 
x=[ta1 ta2];
x1=[distance(ta1) distance(ta2)];
p1=polyfit(x1,x,1); %fixa egen
pos_d=polyval(p1,distans);

%y=polyval(polyfit(anna_distance_km,anna_speed_kmph,1),x)


s1=vektor(ta1); %hittar vilken hastighet vid position ta1
s2=vektor(ta2); %hittar vilken hastighet vid position ta2
y=[s1 s2];

p=polyfit(x,y,1); % bytas mot egen interpolation
v=polyval(p,pos_d);
plot(x,y,'*',pos_d,v,'ro',x,polyval(polyfit(x,y,1),x))
ylabel('kmph')
xlabel('position')
grid on 

 
 
 % plot(x,y,'*',x,polyval(polyfit(x,y,1),x))

%anna_distance_km==distans %?
% v=polyval(p,distans)

%plot(x,y,'bo',distans,polyval(polyfit(x,y,1),distans),'r*')
%f=ta1+polyfit(x,y,1) %interpolerar


%extra=f(distans-ta1)
%v=s1+extra



%
%y=polyval(polyfit(anna_distance_km,anna_speed_kmph,1),anna_distance_km);



% danna='anna_distance_km';
% sanna='anna_speed_kmph';
% delsa='elsa_distance_km';
% selsa='elsa_speed_kmph';

% if route=='anna_distance_kmph'
%     d=danna
%     h=sanna
% elseif route=='elsa__kmph'
%     d=delsa
%     h=selsa
% else
%     disp('Error, välja anna eller elsa')
%     v=NaN
% end
%     index=findex(d,x);
% h(index)
end




