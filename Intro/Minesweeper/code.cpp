std::vector<std::vector<int>> minesweeper(std::vector<std::vector<bool>> matrix) {
    int num_rows = matrix.size();
    int num_cols = matrix[0].size();
    std::vector<std::vector<int>> result(num_rows, std::vector<int>(num_cols));

    for (int row = 0; row < num_rows; row++) {
        for (int col = 0; col < num_cols; col++) {
            if (matrix[row][col]) {
                if (row > 0) {
                    result[row - 1][col] += 1;
                    if (col > 0)
                        result[row - 1][col - 1] += 1;
                    if (col < (num_cols - 1))
                        result[row - 1][col + 1] += 1;
                }
                if (row < (num_rows - 1)) {
                    result[row + 1][col] += 1;
                    if (col > 0)
                        result[row + 1][col - 1] += 1;
                    if (col < (num_cols - 1))
                        result[row + 1][col + 1] += 1;
                }
                if (col > 0)
                    result[row][col - 1] += 1;
                if (col < (num_cols - 1))
                    result[row][col + 1] += 1;
            }
        }
    }
    return result;
}
