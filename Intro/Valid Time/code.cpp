bool validTime(std::string time) {
    int hour = 0;
    int minute = 0;
    
    hour = (time[0] - '0') * 10 + (time[1] - '0');
    minute = (time[3] - '0') * 10 + (time[4] - '0');
    
    return ((hour >= 0) && (hour < 24) && (minute < 60) && (minute >= 0));
}
