bool isLucky(int n) {
    int sum[7] = {0};
    int n_copy = n;
    int curr_digit = 0;
    int length = 0;
    int total_sum = 0;
    
    while (n > 0) {
        curr_digit = n % 10;
        n /= 10;    
        total_sum += curr_digit;
        sum[length] = total_sum;
        length += 1;
    }
    
    if (sum[length/2 - 1] == (sum[length - 1] - sum[length/2 - 1]))
        return true;
    
    return false;
}
