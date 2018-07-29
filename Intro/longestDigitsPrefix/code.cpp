std::string longestDigitsPrefix(std::string inputString) {
    std::string result = "";
    
    for (int i = 0; i < inputString.length(); i++) {
        if ((inputString[i] >= '0') && (inputString[i] <= '9'))
            result += inputString[i];
        else
            return result;
    }
}
