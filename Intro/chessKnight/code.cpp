int chessKnight(std::string cell) {

    int direction[2] = {-1, 1};
    int result = 0;
    
    std::string dest = "";
    
    for(int axis = 0; axis < 2; axis++) {
        // axis = 0 ==> horizontal
        // axis = 1 ==> vertical
        for(int i = 0; i < 2; i++) {
            for(int j = 0; j < 2; j++) {
                dest = cell;
                dest[axis] += direction[i] * 2;
                dest[abs(axis - 1)] += direction[j] * 1;
                
                if (legalPosition(dest))
                    result += 1;
            }
        }
    }
    
    return result;
}

bool legalPosition(std::string cell) {
    
    return ((cell[0] <= 'h')&&(cell[0] >= 'a')&&(cell[1] <= '8')&&(cell[1] >= '1'));
    
}