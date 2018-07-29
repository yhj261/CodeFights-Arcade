bool isBeautifulString(std::string inputString) {
    std::vector<int> count_array(26, 0);
    
    for (auto c : inputString) {
        count_array[c - 'a'] += 1;
    }
    
    for (int i = 1; i < count_array.size(); i++) {
        if (count_array[i] > count_array[i-1])
            return false;
    }
    
    return true;
}
