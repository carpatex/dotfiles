#include <stdint.h>
#include <stdio.h>

uint64_t recursive_fibonacci(uint64_t);
uint64_t fibonacci(uint64_t);

int main(){
	uint64_t i;
	for (i = 0; i < 50; i++) {
			printf("%ld\n", fibonacci(i));
	}
	return 0;
}

uint64_t fibonacci (uint64_t n) {
	uint64_t x, y, z, i;
	x = 0;
	y = 1;
	z = x + 1;
	for (i = 0; i < n; i++) {
		x = y;
		y = z; 
		z = x + y;
	}
	return z;
}

uint64_t recursive_fibonacci(uint64_t n) {
	if (n < 1) {
		return 0;
	}
	else if (n == 1) {
		return 1;
	}
	else {
		return recursive_fibonacci(n - 1) + recursive_fibonacci(n - 2);
	}
}
