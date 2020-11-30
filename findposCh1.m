%Finn Position Christoffer

function [index,er]=findpos(vector,val,ok)
    index=1; %Börjar med att sätta index=1 som grundtillstånd
    if val <min(vector) %Om värdet (val) är mindre än det minsta värdet i vektorn 
        index=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is smaller then the smalest value in the vector')
    elseif val > max(vector)  %Om värdet (val) är större än det största värdet i vektorn 
        index=-1; %Sätter index till -1 som markering på att det inte finns i vektorn
        error('The input value is bigger then the biggest value in the vector')
    else
           for index = 1:length(vector) %testa för alla möjliga värden index kan ha
               if val==vector(index) %Om värdet (val) är lika med ett värde i vektorn 
                   disp(['The exact value you put in is to be found in position: ',num2str(index)]) %Visar vilken position värdet finns i
                   er=0
              % elseif abs(val-vector(index))<0.5
               else 
                   a=min(abs(val-vector(index)));
                   er=min(a);
                   if er < ok
            disp(['The value you put in is to be found within the error of ',num2str(er),  ' in position: ',num2str(index)])
                  % else
                     %  disp(['The value you put in is between the biggest and smalest value but the value is not within ',num2str(ok),  '  ',num2str(index)])
                     end
                      % index=val-er;
                      % for min(er);
                   % disp(['The value you put in is to be found within the error of ',num2str(er),  ' in position: ',num2str(index)]) %Visar vilken position värdet finns i
               %else error('The value you put in is inside the span of the') 
                      % end
               end
           end
    end
end

           % %Finn Position Kalle
% function [index]=findpos(vector,val)
%     val==vector(index) 
%     index=a
% end