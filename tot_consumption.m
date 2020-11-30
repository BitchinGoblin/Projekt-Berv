function E = tot_consumption(x, route, n)
%x=distans
%n=antalintervall
if(mod(n,2)<1)
    N=n-1;
   disp('(En punkt togs bort för du valde ett jämntal)')
else
    N=n;
end


load(route)%laddar rätt anna eller elsa
h=x/N;  %steglängd
s=0:h:x; %skapar vektor
v=velocity(s, route); %räknas v(s)
f=consumption(v); %räknas c(v(s))
%tiden i minuter med simp
E=(h/3)*(f(1)+(2*sum(f(2:end-1))+(2*sum(f(2:2:end-1))+f(end))))*60;

end

