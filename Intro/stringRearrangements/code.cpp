bool stringsRearrangement(std::vector<std::string> inputArray) {
        
    auto arr = permutation(inputArray);
    
    for (auto a : arr) {
        bool result = true;
        for (int i = 1; i < a.size(); i++) {
            if (!diffByOne(a[i-1], a[i])) {
                result = false;
                break;
            }
        }
        if (result)
            return true;
    }
    
    return false;
}

bool diffByOne(std::string s1, std::string s2) {
    int diff_num = 0;
    
    if (s1 == s2)
        return false;
    
    for (int pos = 0; pos < s1.length(); pos++) { 
        if (s1[pos] != s2[pos])
            diff_num += 1;
        if (1 < diff_num)
            return false;
    }
    
    return true;
}

std::vector<std::vector<std::string>> permutation(std::vector<std::string> inputArray) {
    std::vector<std::vector<std::string>> arrangement;
    std::sort(inputArray.begin(), inputArray.end());
    arrangement.push_back(inputArray);
    while(std::next_permutation(inputArray.begin(), inputArray.end())) {
        arrangement.push_back(inputArray);
    }
    
    return arrangement;
}

