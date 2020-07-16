#include<stdio.h>
#include<string.h>

int main()
{
    char s[] = "\x48\x45\x58\x20\x52\x6f\x63\x6b\x73\x21\x0a";
     int lenght = strlen(s);
   for(int i = 0; i<lenght; i++){
        printf("%c", s[i]);
    }

    return 0;
}
