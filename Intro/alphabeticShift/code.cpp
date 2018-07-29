std::string alphabeticShift(std::string inputString) {
    for (int i = 0; i < inputString.size(); i++) {
        inputString[i] += 1;
        if (inputString[i] > 'z')
            inputString[i] = 'a';
    }
    return inputString;
}
