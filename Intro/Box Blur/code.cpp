std::vector<std::vector<int>> boxBlur(std::vector<std::vector<int>> image) {
    int num_rows = image.size();
    int num_cols = image[0].size();
    std::vector<std::vector<int>> row_sums;
    std::vector<std::vector<int>> blured_image(num_rows - 2, std::vector<int>(num_cols - 2));
    
    for (int row = 0; row < num_rows; row++) {
        std::vector<int> sums;
        for (int col = 0; col < num_cols - 2; col++) {
            int sum = image[row][col] + image[row][col + 1] + image[row][col + 2];
            sums.push_back(sum);
        }
        row_sums.push_back(sums);
    }
    
    for (int col = 0; col < row_sums[0].size(); col++) {
        for (int row = 0; row < row_sums.size() - 2; row++) {
            int sum = row_sums[row][col] + row_sums[row + 1][col] + row_sums[row + 2][col];
            blured_image[row][col] = sum/9;
        }
    }
    
    return blured_image;
}
