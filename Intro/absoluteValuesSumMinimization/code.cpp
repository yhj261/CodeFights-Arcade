int absoluteValuesSumMinimization(std::vector<int> a) {
    int n = a.size();
    if ((n % 2) == 0)
        return a[n/2 - 1];
    
    return a[n/2];
}
