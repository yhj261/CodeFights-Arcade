int digitsProduct(int product) {
    int curr_num = product;
    int result = 0;
    bool factor_found = true;
    
    std::vector<int> factors;
    
    if (product < 10)
        return product ? product : 10;
    
    while (factor_found) {
        factor_found = false;
        for (int i = 9; i > 1; i--) {
            if ((curr_num % i) == 0) {
                factor_found = true;
                factors.push_back(i);
                curr_num /= i;
                break;
            }
        }  
    }
    
    if (curr_num > 10)
        return -1;
    
    std::sort(factors.begin(), factors.end());
    
    for (int i = 0; i < factors.size(); i++) {
        result += factors[i] * pow(10, factors.size() - i - 1);
    }

    return result;
}

// int digitsProduct(int product) {
//     if (product < 10)
//         return product ? product:10;
//     string r;
//     for (int i = 9; i > 1; i--) {
//         while (product % i == 0) {
//             product /= i;
//             r = char('0' + i) + r;
//         }
//     }
//     return product != 1 ? -1 : stoi(r);
// }
