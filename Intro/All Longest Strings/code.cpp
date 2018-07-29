std::vector<std::string> allLongestStrings(std::vector<std::string> inputArray) {
    int max_length = 0;
    int curr_length = 0;
    std::vector<std::string> result;
    
    for (int i = 0; i < inputArray.size(); i++) {
        curr_length = inputArray[i].length();
        max_length = std::max(curr_length, max_length);
    }
    
    for (int i = 0; i < inputArray.size(); i++) {
        curr_length = inputArray[i].length();
        if (curr_length == max_length)
            result.push_back(inputArray[i]);
    }
    
    return result;
}
