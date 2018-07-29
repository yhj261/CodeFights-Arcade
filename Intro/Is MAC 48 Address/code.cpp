bool isMAC48Address(std::string inputString) {
    bool end_of_string = false;
    int group_count = 0;
    int pos = -1;
    
    while (!end_of_string) {
        
        auto pos = inputString.find("-");
        std::string s = "";
        
         if (pos == std::string::npos) {
            
            end_of_string = true;
            s = inputString;
         }
        else {
            s = inputString.substr(0, pos);
            inputString.erase(0, pos + 1);
        }

        if (2 != s.length()) {
            return false;
        }
        for (auto c : s) {
            if (!isxdigit(c)) {
                return false;
            }
        }
        group_count += 1;
        
    }

    return true;
}

// bool isMAC48Address(std::string inputString) {
//     regex re("^([0-9a-fA-F]{2}[-]){5}([0-9a-fA-F]{2})$");
//     return regex_match(inputString ,re);
// }
