int sumUpNumbers(std::string inputString) {
    std::vector<string> nums;
    std::string curr_n = "";
    int result = 0;
    
    for (int i = 0; i < inputString.length(); i++) {
        char c = inputString[i];
        
        if (isdigit(c)) {
            curr_n += c;
            if (i == inputString.length() - 1)
                nums.push_back(curr_n);
        }
        else {
            if (curr_n.length() > 0) {
                nums.push_back(curr_n);
                curr_n = "";
            }
        }
    }
    
    for (auto n : nums) {
        
        cout << n << " ";
        result += stoi(n);
    }
    
    return result;
}

// int sumUpNumbers(std::string inputString) {
//     std::regex re ("[0-9]+");
//     std::sregex_iterator it(inputString.begin(), inputString.end(), re), end;
//     return std::accumulate(it, end, 0, [](int sum, const std::smatch& s) {
//         return sum + std::stoi(s.str());
//     });
// }
