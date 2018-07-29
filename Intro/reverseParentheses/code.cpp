std::string reverseParentheses(std::string s) {
    int left_pos = -1;
    std::string s_copy = s;
    std::vector<int> left;
    
    for (int i = 0; i < s_copy.size(); i++) {
        if ('(' == s_copy[i]) {
            left.push_back(i);
        }
        if (')' == s_copy[i]) {
            left_pos = left.back();
            left.pop_back();
            std::reverse(s_copy.begin() + left_pos, s_copy.begin() + i + 1);
        }
    }
    
    for (int i = 0; i < s_copy.size(); i++) {
        if (('(' == s_copy[i]) || (')' == s_copy[i])) {
            s_copy.erase(s_copy.begin() + i);
            i--;
        }
    }
    
    return s_copy;
}
