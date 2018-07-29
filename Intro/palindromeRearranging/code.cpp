bool palindromeRearranging(std::string inputString) {
    bool even = (inputString.length() % 2) == 0 ? true : false;
    int num_alpha[26] = {0};
    int count = 0;
    
    for (auto c : inputString) {
        num_alpha[c - 'a' ] += 1;
    }
    
    for (auto n : num_alpha) {
        if ((n % 2) != 0) {
            if (even) 
                return false;
            else if (count != 0)
                return false;
            else
                count += 1;
        }
    }
    
    return true;
}
