%Finn Position Oliver
function [index]=findpos(vector,val)
    index=1;
    if val < vector(1) || val > vector(lenght(vector))
        index=-1;
        error('Value NaN')
    elseif val == vector(1)
        index= 1;
    else
        while val > vector(index)
            index = index+1
        end
    end
end
%Tar gissningsvis bara raka vektorer
