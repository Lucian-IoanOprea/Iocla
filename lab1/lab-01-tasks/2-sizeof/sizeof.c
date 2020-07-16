#include <stdio.h>
int main()
{
    char charT;
    short shortT;
    int integerT;	
    unsigned int unsignedIntegerT;
    long longT;
    long long longlongT;
    void * voidT;
 	printf("%d\n",sizeof(charT));
	printf("%d\n",sizeof(shortT));
        printf("%d\n",sizeof(integerT));
	printf("%d\n",sizeof(unsignedIntegerT));
        printf("%d\n",sizeof(longT));
	printf("%zu\n",sizeof(voidT));


    return 0;
}
