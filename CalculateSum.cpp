#include<iostream>
#include<stdlib.h>
extern "C" int CalculateSum(int a, int b, int c, int*, int*, int*, int*);

int main()
{
	int a = 9, b = 6, c = 3, s1, s2, s3, s4;
	int result = 0;
	result = CalculateSum(a, b, c, &s1, &s2, &s3, &s4);

}

int CalculateSum(int a, int b, int c, int*, int*, int*, int*)
{
	return 0;
}