std::vector<std::vector<int>> spiralNumbers(int n) {
    std::vector<std::vector<int>> matrix;
    std::vector<int> row_init(n, 0);
    int step_size = n;
    int direction = 1;
    int curr_row = 0;
    int curr_col = -1;
    int curr_num = 1;
    
    for (int row = 0; row < n; row++) {
        matrix.push_back(row_init);
    }
    
    while(curr_num <= n*n) {
        traverse(matrix, curr_row, curr_col, curr_num, step_size, direction);
        curr_row += (step_size - 1) * direction;
        curr_col += (step_size) * direction;
        curr_num += 2*step_size - 1;
        step_size -= 1;
        direction *= -1;
    }
    return matrix;
}

void traverse(std::vector<std::vector<int>> &matrix, int curr_row, int curr_col, int curr_num, int step_size, int direction) {
    int row = curr_row;
    int col = curr_col;
    
    if (direction == 1) {
        for (col += 1; col < curr_col + step_size + 1; col++ ) 
            matrix[row][col] = curr_num++;
        
        for (row = curr_row + 1; row < curr_row + step_size; row++ ) 
            matrix[row][col-1] = curr_num++;
    }
    else {
         for (col -= 1; col > curr_col - step_size - 1; col-- ) 
            matrix[row][col] = curr_num++;
        
        for (row = curr_row - 1; row > curr_row - step_size; row-- )
            matrix[row][col+1] = curr_num++; 
    }
}

// std::vector<std::vector<int>> spiralNumbers(int n) {
//     vector< vector<int>> ans(n);
//     int p=1, r=0;
//     for(int i = 0; i < n;i++){
//         vector<int> temp(n);
//         ans[i] = temp;
//     }
//     for (; n>0; n-=2){
//         for (int a=0; a<n; a++) ans[r][a+r]=p++;
//         for (int b=r+1; b<n+r; b++) ans[b][n-1+r]=p++;
//         for (int c=n-2+r; c>=r; c--) ans[n-1+r][c]=p++;
//         for (int d=n-2+r; d>r; d--) ans[d][r]=p++;
//         r++;
//     }
//     return ans;
// }
