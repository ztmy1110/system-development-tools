#include <stdio.h>
#include <stdlib.h>

int main(void) {
    char *greeting = malloc(6);
    greeting[0] = 'H';
    greeting[1] = 'e';
    greeting[2] = 'l';
    greeting[3] = 'l';
    greeting[4] = 'o';
    greeting[5] = '\0';

    printf("%s\n", greeting);

    greeting[0] = 'J';

    free(greeting);

    return 0;
}
