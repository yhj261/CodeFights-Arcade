bool almostIncreasingSequence(std::vector<int> sequence) {
    
    bool removed_one = false;
    
    for (int i = 0; i < sequence.size() - 1; i++) {
        
        if (sequence[i + 1] <= sequence[i]) {
            std::vector<int> removed_first = sequence;
            std::vector<int> removed_second = sequence;
            removed_first.erase(removed_first.begin() + i);
            removed_second.erase(removed_second.begin() + i + 1);
            return (IncreaseSequence(removed_first)
                    ||IncreaseSequence(removed_second));
        }
    }
           
}
 
bool IncreaseSequence(std::vector<int> sequence) {
    for (int i = 0; i < sequence.size() - 1; i++) {
        if (sequence[i + 1] <= sequence[i])
            return false;
    }
    
    return true;
}