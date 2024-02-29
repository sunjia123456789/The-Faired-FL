function shuffledMatrix = shuffleMatrixRowsCols(matrix, seed)
    rng(seed);
    [rows, cols] = size(matrix); 
    shuffledMatrix = matrix; 
    for i = 1:rows
        shuffledMatrix(i, :) = shuffledMatrix(i, randperm(cols));
    end
    for j = 1:rows 
        for k = 1:cols
            shuffledIndices = randperm(rows);
            shuffledMatrix(:, k) = shuffledMatrix(shuffledIndices, k);
        end
    end
end
