int digitDegree(int n) {
    int curr_value = n;
    int result = 0;
    
    while (curr_value > 9) {
        int dig_sum = 0;
        
        while (curr_value > 0) {
            dig_sum += (curr_value % 10);
            curr_value /= 10;
        }
        
        curr_value = dig_sum;
        result += 1;
    }
    
    return result;
}
