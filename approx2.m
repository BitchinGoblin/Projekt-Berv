%approx2
%Approximerar data punkter till ett polyom
%Skriv vilka vektor som ska användas för x och y axeln
x=input('Ange mätpukter för x-axeln (workspace): ');
y=input('Ange mätpunkter för y-axeln (workspace): ');
%Ser till att x och y är lika stora
if length(x)~=length(y);
    disp('Vektorerna är olika långa, programmet funkar ej')
    
    %När vektorerna är lika stora kan programmet fortsätta
else

%Ange gradtal för approx
G=input('Ange till vilken polynom grad som mätdatan ska anpassas till: ');
%antal steg, kan sättas lätt till ett förbestämt tal
n=input('Ange antal punkter som den approximerar (mer noggrant desto högre tal): ');


%skapar polynom
p=polyfit(x,y,G);

%skapar en tät x och y axel
xx=linspace(x(1),x(end),n);
fxx=polyval(p,xx);

%plottar allt
plot(x,y,'*');
hold on;
plot(xx,fxx);
hold off;
%Just nu är titlarna på diagrammet generella. Går att fixa input/ändra
%väldigt lätt
xlabel('x')
ylabel('y')
title('y(x)')

%end till if statement
end