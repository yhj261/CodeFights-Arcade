bool isIPv4Address(std::string inputString) {
    std::vector<int> nums;
    
    for (int i = 0; i < 4; i++) {
        std::string s = "";
        s = inputString.substr(0, inputString.find('.'));
        
        if ("" == s)
            return false;
        
        for (int j = 0; j < s.length(); j++) {
            if (!isdigit(s[j]))
                return false;
        }
        
        inputString.erase(0, s.length() + 1);
        
        try {
            int n = stoi(s);
            if ((n < 0) || (n > 255))
                return false;
        }
        catch (std::invalid_argument) {
            return false;
        }
        catch (std::out_of_range) {
            return false;
        }
    }
    
    if ("" != inputString)
        return false;
    
    return true;
}


// bool isIPv4Address(std::string s) {
//     regex r("((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])");
//     return regex_match(s, r);
// }
