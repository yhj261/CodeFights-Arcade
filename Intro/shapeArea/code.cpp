// int shapeArea(int n) {
//     int total = 1;
//     for(int i = 1; i < n;i++){
//         total += 4 * i;
//     }
//     return total;
// }

int shapeArea(int n) {
    return 2*n*(n - 1) + 1;
}
