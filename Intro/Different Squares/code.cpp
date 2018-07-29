int differentSquares(std::vector<std::vector<int>> matrix) {
    int num_rows = matrix.size();
    int num_cols = matrix[0].size();
    int result = 0;
    
    std::unordered_map<std::string, int> mymap;
    
    for (int row = 1; row < num_rows; row++) {
        for (int col = 1; col < num_cols; col++) {
            std::string curr_str = "";
            curr_str += matrix[row - 1][col - 1] + '0';
            curr_str += matrix[row][col - 1] + '0';
            curr_str += matrix[row - 1][col] + '0';
            curr_str += matrix[row][col] + '0';
            
            if (mymap.count(curr_str) == 0) {
                result += 1;
                mymap.insert({curr_str, 1});
            }
        }
    }
    
    return result;
}
