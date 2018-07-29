bool evenDigitsOnly(int n) {
    auto s = to_string(n);
    
    for (auto c : s) {
        if (((c - '0') % 2) != 0)
            return false;
    }
    
    return true;
}
