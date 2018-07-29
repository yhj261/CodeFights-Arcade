int avoidObstacles(std::vector<int> inputArray) {
    int result = 1;
    int curr_pos = 0;
    int is_obs[40] = {0};
    
    std::sort(inputArray.begin(), inputArray.end());
    
    if (0 != inputArray.size())
        result = 2;
    
    is_obs[inputArray[0]] = 1;
    
    for (int i = 1; i < inputArray.size(); i++) {
        is_obs[inputArray[i]] = 1;
        if (1 == (inputArray[i] - inputArray[i - 1]))
            result += 1;
    }
    
    while (curr_pos < (inputArray[inputArray.size() - 1])) {
        if (is_obs[curr_pos + result]) {
            result += 1;
            curr_pos = 0;
        }   
        else {
            curr_pos += result;
        }
    }

    
    return result;
}


// int avoidObstacles(std::vector<int> a) {
//     for(int i = 2;;i++){
//         bool t = true;
//         for(int n:a)
//             t = t && n%i != 0;
//         if(t) return i;
//     }
// }
