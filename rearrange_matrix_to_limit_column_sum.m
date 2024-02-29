function M = rearrange_matrix_to_limit_column_sum(M, max_column_sum)
    [rows, cols] = size(M);
    original_row_sums = sum(M, 2);
    max_attempts = 10000000;
    attempt = 0;
    while max(sum(M)) > max_column_sum && attempt < max_attempts
        for row = 1:rows
            col1 = randi(cols);
            col2 = randi(cols);
            temp = M(row, col1);
            M(row, col1) = M(row, col2);
            M(row, col2) = temp;
        end
        new_row_sums = sum(M, 2);
        if any(new_row_sums ~= original_row_sums)
            temp = M(row, col1);
            M(row, col1) = M(row, col2);
            M(row, col2) = temp;
        end
        attempt = attempt + 1;
    end
    if attempt == max_attempts
        disp('Reached maximum attempts without fulfilling the condition.');
    end
end
