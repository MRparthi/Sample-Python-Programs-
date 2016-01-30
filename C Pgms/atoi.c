#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
#include<math.h>
int main() {
	char str1[] = "12";
	char str2[] = "34";
	int num1,num2;
	num1=atoi(str1);
	num2=atoi(str2);
	printf("%d\t %d\n", num1,num2);
	
	div_t result;
	result = div(10,3);
	printf("the quotient is %d and remainder is %d\n", result.quot, result.rem);
    
	printf("the square root of 16 is %f\n", sqrt(16));
	printf("the square root of 27 is %f\n", cbrt(27));

    printf("ceilign fucntion %f\n", ceil(8.7));
    printf("the floor function %f\n", floor(7.2)); 
    printf("round function %f\n", round(4.5));
    
    double base, exp;
    base = 4.0;
    exp = 0;
    printf("base %f to the power %f is %f\n", base,exp,pow(base,exp));
	getch();
	return 0;
	
}
