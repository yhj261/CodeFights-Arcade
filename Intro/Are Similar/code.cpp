bool areSimilar(std::vector<int> a, std::vector<int> b) {
    bool flag = false;
    int diff_pos = -1;
    int count = 0;
    
    for (int i = 0; i < a.size(); i++) {
        if ((a[i] != b[i])) {
            if (!flag) {
                flag = true;
                diff_pos = i;
            }
            else {
                if ((a[diff_pos] != b[i]) || (b[diff_pos] != a[i]) || count != 0)
                    return false;
                count += 1;
                flag = false;
            }
        }  
    }
    
    if (flag)
        return false;
    
    return true;
}
