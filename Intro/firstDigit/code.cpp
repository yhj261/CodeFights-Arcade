char firstDigit(std::string inputString) {
    for (auto c : inputString) {
        if ((c <= '9') && (c >= '0'))
            return c;
    }
}
