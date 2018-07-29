int depositProfit(int deposit, int rate, int threshold) {
    float curr_num = deposit;
    int year = 0;
    float mutiplier = 1 + float(rate)/100;
    
    while (curr_num < threshold) {
        curr_num *= mutiplier;
        year += 1;
    }
    
    return year;

}
