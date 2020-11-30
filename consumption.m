function c = consumption(v)
%Gäller endast för roadster
load('roadster.mat')
x=speed_kmph;
y=consumption_Whpkm;

%minsta kvadratanpassning, beräknar a1-a4

a1=(x.^-1);
a2=(x.^0);
a3=(x);
a4=(x.^2);
B=y';
At=[a1;a2;a3;a4];
A=At';
C=At*A;
D=At*B;
Z=C\D; %a1 tom a4 skapas

%Z=440.4650, 59.9190, 0.1113,0.0088 <- a1 till a4

%Denna del är själva in och  (viktig!)

c= Z(1)*v.^-1 + Z(2) + Z(3)*v + Z(4)*v.^2;
end

