std::vector<int> sortByHeight(std::vector<int> a) {
    int j = 0;
    int n = a.size();
    int trees[n] = {0};
    std::vector<int> heights;
    
    for (int i = 0; i < n; i++) {
        if (a[i] == -1) 
            trees[i] = 1;
        else 
            heights.push_back(a[i]);
    }
    
    std::sort(heights.begin(), heights.end());
    
    for (int i = 0; i < n; i++) {
        if (trees[i])
            a[i] = -1;
        else {
            a[i] = heights[j];
            j += 1;
        }
    }
    
    return a;
}
