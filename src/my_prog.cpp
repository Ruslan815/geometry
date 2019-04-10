#include <iostream>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i, n;
    float x, y, r;
    std::cout << "Enter number of figures: ";
    std::cin >> n;
    float A[n][3];
    for (i = 0; i < n; i++) {
        std::cout << "Circle " << i << ": ";
        std::cin >> x >> y >> r;
        A[i][0] = x;
        A[i][1] = y;
        A[i][2] = r;
    }
    for (i = 0; i < n; i++) {
        std::cout << "Circle " << i << ": x= " << A[i][0] << " y= " << A[i][1]
                  << " r= " << A[i][2] << ';' << std::endl;
    }
    return 0;
}
