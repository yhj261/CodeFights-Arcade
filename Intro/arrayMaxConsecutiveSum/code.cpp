int arrayMaxConsecutiveSum(std::vector<int> inputArray, int k) {
    int max_sum = 0;
    int curr_sum = 0;
    int max_pos = 0;
    
    for (int j = 0; j < k; j++) {
        curr_sum += inputArray[j];
    }
    max_sum = curr_sum;
    
    for (int i = 1; i <= inputArray.size() - k; i++) {
        curr_sum -= inputArray[i - 1];
        curr_sum += inputArray[i + k - 1];
        max_sum = std::max(max_sum, curr_sum);
    }
    return max_sum;    
}
