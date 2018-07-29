int deleteDigit(int n) {
    std::string s = std::to_string(n);
    std::vector<char> digits;
    int init_length = s.length();
    
    for (int i = 1; i < s.length(); i++) {
        if (s[i] > s[i-1]) {
            s.erase(s.begin()+i-1);
            cout << s << endl;
            break;
        }
    }
    
    if (s.length() == init_length) {
        s.erase(s.begin() + s.length() - 1);
    }
    
    return stoi(s);
}
