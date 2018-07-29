# include <algorithm>

int makeArrayConsecutive2(std::vector<int> statues) {
    auto max_size = std::max_element(statues.begin(), statues.end());
    auto min_size = std::min_element(statues.begin(), statues.end());
    int num_needed = *max_size - *min_size + 1;
    
    return num_needed - statues.size();
}
