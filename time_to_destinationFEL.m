function T=time_to_destinationFEL(x, route, n)
%x=distans
%n=antalintervall
%ANVÄNDS FÖR ATT RÄKNA UT FELET -> felet uppskattas till ca 1km/h
load(route)%laddar anna eller elsa
h=x/n;  %steglängd
s=0:h:x; %skapar vektor
a=velocity(s, route); %
v=a.^2;
f=1./v;
%tiden i minuter med trapets. alla inrepunkter räknas 2ggr.
T=(h/2)*(f(1)+(2*sum(f(2:end-1))+f(end)))*60;

%--------Kommentarer om felen------------- -> n=10 000 ok
%diskfel med n=10 000 -> -0.0096
%antag att mätfelet är +- 1km/h -> Ef = 0.5751 -> betydligt större än Rt
end