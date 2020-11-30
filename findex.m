function [index] = findex(vector, val)
%findex hittar vilket index av en vektor som ger ditt sökta värde
%inmantning: vector, sökt värde
index=1;

%sätter index till 1, som startvärde -> detta för loopen längre ned
%Hittar start och slut talet  i vectorn -> Detta för att definera -1

       
if val<vector (1) || val>vector(end)
    index=-1;
   disp('Värdet ingår ej i vektorn');
   %om värdet är lägra än index 1 eller högre än vektorns högsta värdet ges index=-1
   %som svar
elseif val==vector(1)
    index=2;
    disp('Värdet stämmer överns med första elementet')
    %När värdet stämmer överns med index 1
else
    while vector(index)<val
        index=index+1;
       
    end
    %En while-loop  som tar fram indexvärdet som stämmer
    %överns med val. Loopen jobbar tills while-vilkoret är uppfyllt.
    
end

end
