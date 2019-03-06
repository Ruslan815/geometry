#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i, n;
    float x, y, r;
    printf("Enter number of figures: ");
    scanf("%d", &n);
    float A[n][3];
    for (i = 1; i <= n; i++) {
        printf("\n %d.circle= ", i);
        scanf("%d.circle(%f %f,%f)", &i, &x, &y, &r);
        A[i][0] = x;
        A[i][1] = y;
        A[i][2] = r;
    }
    for (i = 1; i <= n; i++) {
        printf("\n %d.circle(%1.0f %1.0f,%1.2f)", i, A[i][0], A[i][1], A[i][2]);
    }
    return 0;
}
