std::string longestWord(std::string text) {
    int max_length = 0;
    int curr_length = 0;
    std::string result = "";
    std::string curr_str = "";
    
    for (int i = 0; i < text.length(); i++) {
        char c = text[i];
        
        if (isalpha(c)){
            curr_str += c;
            curr_length += 1;
            
            if (i == text.length() - 1) {
                if (curr_length > max_length)
                    return curr_str;
            }
        }
        else {
            if (curr_length > max_length) {
                max_length = curr_length;
                result = curr_str;    
            }
            curr_length = 0;
            curr_str = "";
        }
    }
    
    return result;
}
