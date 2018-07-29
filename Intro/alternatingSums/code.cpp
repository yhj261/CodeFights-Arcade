std::vector<int> alternatingSums(std::vector<int> a) {
    std::vector<int> sums(2, 0);
    
    for (int i = 0; i < a.size(); i++) {
        sums[i % 2] += a[i];
    }
    
    return sums;
}
