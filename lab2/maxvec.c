#include <stdio.h>
#include <stdlib.h>
#define nmax 10001


int main(){
	int v[nmax] = { 0 }, n, maxi = -100000;
	scanf("%d", &n);
	int i = 0;
	 do_work:
	 scanf("%d",&v[i]);
	  if( maxi < v[i] )
	 	maxi = v[i];
	 i++;
	 if( i <= n - 1 )
	 	goto do_work;
	printf("%d", maxi);

}