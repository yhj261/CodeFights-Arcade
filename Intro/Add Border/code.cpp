std::vector<std::string> addBorder(std::vector<std::string> picture) {
    int num_rows = picture.size();
    int num_cols = picture[0].length();
    
    std::vector<std::string> copy = picture;
    std::string border;
    
    picture.resize(num_rows + 2);
    
    for (int i = 0; i < num_cols + 2; i++)
        border += '*';
    
    picture[0] = border;
    picture[num_rows + 1] = border;
    
    for (int i = 0; i < num_rows; i++) {
        picture[i + 1] = '*' + copy[i] + '*';
    }
    
    return picture;
}
