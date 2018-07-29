std::vector<int> extractEachKth(std::vector<int> inputArray, int k) {
    auto result = inputArray;
    int offset = 1;
    
    for (int n = 1; n*k <= inputArray.size(); n++, offset++) {
        result.erase(result.begin() + n*k - offset);
    }
    
    return result;
}
