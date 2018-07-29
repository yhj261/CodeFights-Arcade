int arrayChange(std::vector<int> inputArray) {
    int moves = 0;
    for (int i = 1; i < inputArray.size(); i++) {
        if (inputArray[i] <= inputArray[i - 1]) {
            moves += inputArray[i - 1] + 1 - inputArray[i];
            inputArray[i] = inputArray[i - 1] + 1;
        }
    }
    
    return moves;
}
