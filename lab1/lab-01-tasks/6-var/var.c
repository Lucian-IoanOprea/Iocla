#include <stdio.h>

int main(void)
{
    short a = 20000;
    short b = 14000;

    short c = a + b;
    unsigned short d = 3 * a + b;
    short e = a << 1;

    printf("%d\n",c);
    printf("%d\n",d);
    printf("%d\n",e);


    return 0;
}
