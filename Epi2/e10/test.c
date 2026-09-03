#include <stdio.h>

int main(void) {
    long long sum = 0;

    for (long long i = 0; i < 100000000; i++) {
        sum += i;
    }

    printf("sum = %lld\n", sum);

    return 0;
}
