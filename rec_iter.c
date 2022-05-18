// Program of factorial in iterative
#include<stdio.h>
#include<conio.h>
int fact(int n)
{
	int res = 1;
	while(n!=0)
	{
		res = res*n;
		n--;
	}
	return res;
}

int main()
{
	printf("%d",fact(5));
	return 0;
}

