int electionsWinners(std::vector<int> votes, int k) {
    int max_vote = 0;
    int max_dup = 1;
    int n = 0;
    
    for (auto v : votes) {
        if (v > max_vote) {
            max_vote = v;
            max_dup = 1;
        }
        else if (v == max_vote)
            max_dup += 1;
    }
    
    if (0 == k) {
        return max_dup > 1 ? 0 : 1;
    }
    
    
    for (auto v : votes) {
        if ((v + k) > max_vote)
            n += 1;
    }
    
    return n;
}
