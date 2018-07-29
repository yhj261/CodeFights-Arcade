int differentSymbolsNaive(std::string s) {
    int count[26] = {0};
    int result = 0;
    
    for (auto c : s) {
        int offset = c - 'a';
        if ((offset < 26) && (offset >= 0))
            count[offset] += 1;
    }
    
    for (auto n : count) {
        if (n)
            result += 1;
    }
    
    return result;
}

// int differentSymbolsNaive(std::string s) {
//     set<char> a;
//     for(auto c:s)
//         a.insert(c);
//     return a.size();
// }