bool checkPalindrome(std::string inputString) {
    int str_len = inputString.length();
    int left_end = -1;
    int right_start = -1;
    
    if (str_len == 1) return true;
    
    // odd number
    if ((str_len % 2) != 0) {
        left_end = (str_len / 2);
        right_start = left_end + 1;
    }
    else // even number
    {
        left_end = (str_len / 2);
        right_start = left_end;
    }
    std::string left_half = inputString.substr(0, left_end);
    std::string right_half = inputString.substr(right_start);
    std::reverse(right_half.begin(), right_half.end());
    
    return !left_half.compare(right_half);
}
