#include <stdio.h>

int add(int a, int b);

int main(void) {
    int result = add(2, 3);

    if (result == 5) {
        printf("TEST PASSED: add(2, 3) = %d\n", result);
        return 0;
    } else {
        printf("TEST FAILED: add(2, 3) = %d (expected 5)\n", result);
        return 1;
    }
}