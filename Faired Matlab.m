%Please get K in OptimalselectionAlgorithm, then join in this .m
G = [];
k = 23;
i = 500; 
N = 20;
limit = 0.3;
while length(G) < i
    G = [G, ones(1, 2*k-2)];
    if length(G) >= i
        break; 
    end
        G = [G, zeros(1, 2*k-1)];
    k = k + 1;
end
G = G(1:i);
Num = sum(G);
NB = N * limit;
result=rearrange_matrix(N,i,Num,NB);
result=shuffleMatrixRowsCols(result,42);
result=rearrange_matrix_to_limit_column_sum(result,NB)
filename = 'client_selection.csv';
writematrix(result, filename);