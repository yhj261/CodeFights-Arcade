int commonCharacterCount(std::string s1, std::string s2) {
    std::vector<int> s1_count(26, 0);
    std::vector<int> s2_count(26, 0);
    int num_char = 0;
    
    
    for (int i = 0; i < s1.length(); i++) {
        s1_count[s1[i] - 'a'] += 1;
    }
    
    for (int i = 0; i < s2.length(); i++) {
        s2_count[s2[i] - 'a'] += 1;
    }
    
    for (int i = 0; i < s1_count.capacity(); i++) {
        num_char += std::min(s1_count[i], s2_count[i]);
    }
    return num_char;
}