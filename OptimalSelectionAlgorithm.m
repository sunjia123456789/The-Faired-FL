function k = OptimalSelectionAlgorithm(beta, i)
    n = 0;     
    acc = 0;    
    k = 0;     
    minValues = []; 
    for j=1:i
        y(j)=2j+1;
    end
    while n < sqrt(i)
        if beta > (y(2*n+1) / (y(2*n+2) + y(2*n+1)))
            acc = acc + y(2*n+1)*beta + y(2*n+2)*(beta-1);
        else
            minValues(end+1) = (beta-1)*acc;
            k = k + 1;
        end
        n = n + 1; 
    end
    return
end
