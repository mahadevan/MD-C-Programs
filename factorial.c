#include <stdio.h>
int main()
{
	int n, i;
	unsigned long long factorial = 1;

	printf("Enter an integer please: ");
	scanf("%d", &n);

	// show error if the user enters a negative integer
	if (n < 0)
		printf("Grave Error! Factorial of a negative number doesn't exist.");

	else
	{
		for (i = 1; i <= n; ++i)
		{
			factorial *= i;              // factorial = factorial*i;
		}
		printf("Factorial of %d = %llu", n, factorial);
	}

	return 0;
}

/*
 ============================================================================
 Name        : Mahadevan.N.Iyer
 Program     : Factorial
 Description : Factorial in C
 ============================================================================
 */