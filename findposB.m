%Finn Position Christoffer

function [index]=findpos(vector,val)
    if val <min(vector) %Om värdet (val) är mindre än det minsta värdet i vektorn 
        index=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is smaller then the smalest value in the vector')
    elseif val > max(vector)  %Om värdet (val) är större än det största värdet i vektorn 
        index=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is bigger then the biggest value in the vector')
    else
           for index = 1:length(vector)-1 %testa för alla möjliga värden index kan ha
               if val==vector(index) %Om värdet (val) är lika med ett värde i vektorn 
                   disp(['The exact value you put in is to be found in position: ',num2str(index)]) %Visar vilken position värdet finns i
                   er=0; %inget fel
               elseif val > vector(index) %för att hitta position där inputvärdet är mellan två värden och det tidigare värdet i vektorn är mindre än det senare. 
                    if val< vector(index+1) 
                   er=min(abs(val-vector(index)));
                   er2=min(abs(val-vector(index+1)));
                    disp(['The value you put in is to be found between position ',num2str(index),  ' and ',num2str(index+1),' and are ',num2str(er), ' bigger then the value (',num2str(vector(index)), ') in position ',num2str(index),', and ',num2str(er2), ' smaller then the value (',num2str(vector(index+1)), ') in position ',num2str(index+1) ])
                    end
               elseif val > vector(index+1) %för att hitta position där inputvärdet är mellan två värden och det tidigare värdet i vektorn är mindre än det senare. 
                    if val< vector(index) 
                   er=min(abs(val-vector(index)));
                   er2=min(abs(val-vector(index+1)));
                    disp(['The value you put in is to be found between position ',num2str(index),  ' and ',num2str(index+1),' and are ',num2str(er), ' smaller then the value (',num2str(vector(index)), ') in position ',num2str(index),', and ',num2str(er2), ' bigger then the value (',num2str(vector(index+1)), ') in position ',num2str(index+1) ])
                    end
               end
           end
    end
    index=index+1;
    disp('output = last position with equal or bigger value then input value')
end



















