bool stringsRearrangement(std::vector<std::string> inputArray) {
    while(next_permutation(inputArray.begin(), inputArray.end())) {
        bool flag = 1;
        for(int i = 0; i < inputArray.size() - 1; i++) {
            int c = 0;
            for(int j = 0; j < inputArray[i].size(); j++)
                if(inputArray[i][j] != inputArray[i+1][j]) c++;
            if(c != 1) flag = 0; 
        }
        if(flag) return 1;
    }
    return 0;
}
