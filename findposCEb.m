%Finn position för första elementet i vectorn som har samma eller större värde som inputvärdet, samt visa var värdet finns annnars i vecktorn eller mellan vilka och hur långt ifrån värden inputvärdet ligger
%Christoffer Eriksson

function [a]=findposCEb(vector,val)

%Begrensa definitionsmängd
    if val <min(vector) %Om värdet (val) är mindre än det minsta värdet i vektorn 
        a=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is smaller then the smalest value in the vector')
    elseif val > max(vector)  %Om värdet (val) är större än det största värdet i vektorn 
        a=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is bigger then the biggest value in the vector')
    else
           for index = 1:length(vector) %testa för alla möjliga värden index kan ha
               if val==vector(index) %Om värdet (val) är lika med ett värde i vektorn 
                   disp(['The exact value you put in is to be found in position: ',num2str(index)]) %Visar vilken position värdet finns i
               end
           end
           for index = 2:length(vector) %testa för alla möjliga värden index kan ha
               if val > vector(index-1) %för att hitta position där inputvärdet är mellan två värden och det tidigare värdet i vektorn är mindre än det senare.
                    if val< vector(index) 
                   er=min(abs(val-vector(index-1)));
                   er2=min(abs(val-vector(index)));
                    disp(['The value you put in is to be found between position ',num2str(index-1),  ' and ',num2str(index),' and are ',num2str(er), ' bigger then the value (',num2str(vector(index-1)), ') in position ',num2str(index-1),', and ',num2str(er2), ' smaller then the value (',num2str(vector(index)), ') in position ',num2str(index) ])
                    end
               elseif val > vector(index) %för att hitta position där inputvärdet är mellan två värden och det tidigare värdet i vektorn är mindre än det senare. 
                    if val< vector(index-1) 
                   er=min(abs(val-vector(index-1)));
                   er2=min(abs(val-vector(index)));
                    disp(['The value you put in is to be found between position ',num2str(index-1),  ' and ',num2str(index),' and are ',num2str(er), ' smaller then the value (',num2str(vector(index-1)), ') in position ',num2str(index-1),', and ',num2str(er2), ' bigger then the value (',num2str(vector(index)), ') in position ',num2str(index) ])
                    end
               end
           end
    end
    
%Ge outputvärdet
    a=1;
    while val > vector(a) %fortsätter tills sökta index är hittat
            for a =1:a+1 %låter oss söka med steglängd 1
            end
    end
        
    %förtydligande text
    disp('output = first position with equal or bigger value then input value')
end



















