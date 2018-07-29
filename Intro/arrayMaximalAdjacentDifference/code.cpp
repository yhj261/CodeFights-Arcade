int arrayMaximalAdjacentDifference(std::vector<int> inputArray) {
    int max_diff = 0;
    for (int i = 1; i < inputArray.size(); i++) {
        int diff = abs(inputArray[i] - inputArray[i - 1]);
        if (diff > max_diff)
            max_diff = diff;
    }
    
    return max_diff;
}
