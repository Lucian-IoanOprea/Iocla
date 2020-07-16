#include <stdio.h>
#include "helper.h"

int f(int a, int b);

static int local_var1 = 1;
static int local_var2;
static int my_variable;
static const int loca = 10;
static const int local_var3 = 2;

float global_var1 = 3.0;
const float global_var2 = 4.0;
int global_var3;

int main() {
	static char local_var5;

	if (local_var1 > local_var2) {
		global_var1 += global_var2;
	} else {
		global_var1 -= global_var2;
	}
	
      global_var3 = f(local_var1, local_var3);
	
	return 0;
}

int f(int a, int b) {
	int c;
	c = a * b;
	return c;
}
