#include<stdio.h>
#include<conio.h>
// passbyvalue and reference
void function1(int, int);
void function2(int *, int *);
int main() {
	int x,y;
	x = 10;
	y = 20;
	printf("before the function call, the value of x is %d and y is %d\n", x,y);
	function1(x, y);
	printf("after the function call the value of x is %d and y is %d\n", x, y); 
	printf("\n");
	int var1, var2;
	var1 = 300;
	var2 = 400;
	printf("before the function2 call the value of var1 is %d and var2 is %d\n", var1,var2);
	function2(&var1, &var2);
	printf("after the function2 call the value of var1 is %d and var2 is %d\n", var1, var2);	
getch();
return 0;
}
void function1(int a, int b){
	printf("the value of a is %d and b is %d\n", a, b);
	a = 100;
	b = 200;
	printf("the value of a is %d and b is %d\n", a, b);
}
// pass by reference 
void function2(int *p, int *q){
	*p = 500;
	*q = 600;
	printf("\n");
	printf("the value of p inside the function2 is %d\t and q is %d\n", *p, *q);	
}
