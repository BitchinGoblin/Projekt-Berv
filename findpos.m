function index=findpos(vector,val)
    index = 1;
    if val < vector(1) |  val > vector(end)
        index = -1;
        error('Value outside vector limit, Function only viable for continually increasing vectors')
    elseif val == vector(1)
        index = 1;
    else
        while val > vector(index)
            index = index+1;
        end
    end
end