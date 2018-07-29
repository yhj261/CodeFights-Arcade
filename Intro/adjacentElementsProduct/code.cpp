#include <algorithm>    // std::max

int adjacentElementsProduct(std::vector<int> inputArray) {
    int max_product = INT_MIN;
    
    for (int i = 0; i < inputArray.size() - 1; i++) {
        max_product = std::max(max_product, inputArray[i]*inputArray[i+1]);
    }
    
    return max_product;
}
