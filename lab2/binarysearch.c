#include <stdio.h>
#define nmax 100001



int main(){
	int n , v[nmax] = {0}, i, x, mid;
	scanf("%d%d", &n, &x);
	i = 0;
	some_work:
	scanf("%d", &v[i]);
	i++;
	if( i <= n - 1 )
		goto some_work;
   int lo = -1;
   int hi = n;
   cycle_again:
     mid = ( lo + hi ) /2;
    if ( v[mid] < x )
      lo = mid;
    if ( v[mid] >= x)
      hi = mid;
    if( hi - lo > 1)
    goto cycle_again;
    printf("%d", hi); 

}