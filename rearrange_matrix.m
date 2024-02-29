function M = rearrange_matrix(c, d, k, q)
    M = zeros(c, d);
    if d*q/c < k
        k = floor(d*q/c); 
    end
    max_ones_per_column = floor(c * k / d);
    if max_ones_per_column > q
        max_ones_per_column = q;
    end
    for row = 1:c
        ones_placed = 0;
        col = 1;
        while ones_placed < k
            if sum(M(:, col)) < max_ones_per_column
                M(row, col) = 1;
                ones_placed = ones_placed + 1;
            end
            col = col + 1;
            if col > d
                col = 1;
            end
        end
    end
end