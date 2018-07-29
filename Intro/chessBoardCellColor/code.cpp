bool chessBoardCellColor(std::string cell1, std::string cell2) {
    char col1 = cell1[0];
    char row1 = cell1[1];
    char col2 = cell2[0];
    char row2 = cell2[1];
    return ((abs(col1 - col2) % 2) == (abs(row1 - row2) % 2));
}
