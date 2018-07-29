int matrixElementsSum(std::vector<std::vector<int>> matrix) {
    int num_rows = matrix.size();
    int num_cols = matrix[0].size();
    int total_price = 0;
    auto price_mat = matrix;
    for (int col = 0; col < num_cols; col++) {
        for (int row = 0; row < num_rows; row++) {
            if (price_mat[row][col] == 0)
                break;
            else 
                total_price += price_mat[row][col];
        }
    }
    
    return total_price;
}
