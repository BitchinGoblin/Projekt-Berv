function c = consumption(v)
%Gäller endast för roadster
load('Projekt_initial_data.mat')
x=roadster_speed_kmph;
y=roadster_consumption_Whpkm;

%minsta kvadratanpassning, beräknar a1-a4

a1=(x.^-1);
a2=(x.^0);
a3=(x);
a4=(x.^2);


B=y'; %=c
At=[a1;a2;a3;a4]; %=V
A=At';
C=At*A;
D=At*B;
Z=C\D; %a1 tom a4 skapas

%Denna del är för grafen

Xaxel=linspace(0,200,500); %bildar xaxel 
yval=Z(1)*Xaxel.^-1 + Z(2) + Z(3)*Xaxel + Z(4)*Xaxel.^2; %500 punkter som polynomet passerar
plot(x,y,'*',Xaxel,yval) %
title('Energikonsumption över hastighet')
xlabel('km/h')
ylabel('Wh/km')
grid on
%Denna del är själva in och output

c= Z(1)*v.^-1 + Z(2) + Z(3)*v + Z(4)*v.^2;
end