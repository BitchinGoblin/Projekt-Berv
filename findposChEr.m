%Finn position Christoffer Eriksson

function [index]=findpos(vector,val)
    index=1; %startvärde för index
   if val <min(vector) %Om värdet (val) är mindre än det minsta värdet i vektorn 
        index=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is smaller then the smalest value in the vector')
    elseif val > max(vector)  %Om värdet (val) är större än det största värdet i vektorn 
        index=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is bigger then the biggest value in the vector')
   elseif val == vector(1) %specialfall då värdet (val) är lika med det första värdet i vektorn
       index=2
       disp('Given value is equal to the first element in the vector')
   elseif val < vector(index) %Utefall att vektorns första element är större än givet värde men värdet är större än vektorns minsta element.
       disp(['The value you put in is between the biggest and smalest value in the vector but smaller then the first value (',num2str(vector(index)),')'] )
   else
    while val > vector(index) %fortsätter tills sökta index är hittat
        for index =1:index+1 %låter oss söka med steglängd 1
        end
    end
   end
end


