bool variableName(std::string name) {
    // 65 - 90, 97 - 122, 95
    if (isdigit(name[0]))
        return false;
    
    for (auto x : name) {
        if (!isdigit(x) && !isalpha(x) && !('_' == x))
            return false;
    }
    return true;
}

// bool variableName(std::string name) {
//     regex re("[a-zA-Z_][0-9a-zA-Z_]*");
//     return regex_match(name,re);
// }
