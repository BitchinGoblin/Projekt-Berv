%Finn position Christoffer Eriksson

function [index]=findposCE(vector,val)
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
    er=vector(index)-val;%felet till elementet under index
       disp(['The value you put in is between the biggest and smalest value in the vector but ',num2str(er), ' smaller then the first value (',num2str(vector(index)),')'] )
    else 
                for index =1:length(vector) %låter oss söka med steglängd 1
                    if vector(index) > val > vector(index-1)  
                        er=vector(index)-val; %felet till elementet under index
                        disp(['The value you put in is to be found between position ',num2str(index-1),  ' and ',num2str(index),' in the given vector and are ',num2str(er), ' smaller then the value (',num2str(vector(index)),') in position ',num2str(index)])
                    end
                end
    end
end


