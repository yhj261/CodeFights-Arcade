int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
    int curr_height = upSpeed;
    for (int days = 1;;curr_height += upSpeed, days += 1) {
        if (curr_height >= desiredHeight)
            return days;
        
        curr_height -= downSpeed;
    }
    
    return -1;
}
