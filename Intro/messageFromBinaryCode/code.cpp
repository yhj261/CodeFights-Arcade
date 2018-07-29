std::string messageFromBinaryCode(std::string code) {
    std::string result = "";
    int n = code.length();
    
    for (int i = 0; i < n; i += 8) {
        std::string bi_code = code.substr(0, 8);
        char c = (char)std::stoi(bi_code, nullptr, 2);
        code.erase(0, 8);
        result.push_back(c);
    }
    
    return result;
}
