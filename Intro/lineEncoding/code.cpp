std::string lineEncoding(std::string s) {
    std::vector<char> sub_str;
    std::vector<int> count;
    std::string result = "";
    int curr_n = 0;
    char curr_c = s[0];
    
    sub_str.push_back(curr_c);
    for (auto c : s) {
        if (curr_c != c) {
            count.push_back(curr_n);
            sub_str.push_back(c);
            curr_c = c;
            curr_n = 0;
        }
        curr_n += 1;
    }
    count.push_back(curr_n);
    
    for (int i = 0; i < count.size(); i++) {
        if (1 != count[i])
            result += to_string(count[i]);
        result += sub_str[i];
    }
    
    return result;
}