#include <stdio.h>
#include <stdint.h>
struct division {
	int64_t quotient;
	int64_t remainder;
};

struct division division(int64_t, int64_t);

int main() {
	struct division div = division(17,5);
	printf("%ld %ld\n", div.quotient, div.remainder);
	return 0;
}

struct division division(int64_t dividend, int64_t divisor){
	struct division result;
	result.quotient = dividend / divisor;
	result.remainder = dividend % divisor;
	return result;
}
