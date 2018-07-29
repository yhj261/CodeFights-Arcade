int circleOfNumbers(int n, int firstNumber) {
    int result = firstNumber + n/2;
    return n <= (result) ? (result - n) : result;
}
