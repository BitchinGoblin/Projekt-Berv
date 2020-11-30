function [v] = velocity1(distans,anna_speed_kmph)
load('Projekt_initial_data.mat')

ta1=findpos(anna_distance_km,distans)-1; %hittar efter vilken positon stäckan kördes
ta2=findpos(anna_distance_km,distans); %hittar innan vilken positon stäckan kördes 
x=[ta1 ta2]
y1=[ta1 ta2]
x1=[anna_distance_km(ta1) anna_distance_km(ta2)]
p1=polyfit(x1,y1,1)
pos_d=polyval(p1,distans)

%y=polyval(polyfit(anna_distance_km,anna_speed_kmph,1),x)


s1=anna_speed_kmph(ta1); %hittar vilken hastighet vid tiden ta1
s2=anna_speed_kmph(ta2); %hittar vilken hastighet vid tiden ta2
y=[s1 s2]

p=polyfit(x,y,1) % bytas mot egen interpolation
v=polyval(p,pos_d)
plot(x,y,'*',pos_d,v,'ro',x,polyval(polyfit(x,y,1),x))
ylabel('kmph')
xlabel('position')

 
 
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




