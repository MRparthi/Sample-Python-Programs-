#include<stdio.h>
#include<conio.h>
/*
++A first increments the value of A and then returns an lvalue referring to a, so if the value of A is used then it will be the incremented value.
A++ first returns an rvalue whose value is A, i.e. the old value, and then increments A at an unspecified time before the next full-expression
Postfix increment has higher precedence than prefix increment.
*/
int main() {
int A = 2;
int B = 10;
printf("the value of A is %d\n", A++);
printf("the value of A now is %d\n", A);

printf("the value of B is %d\n", ++B);
printf("the value of B now is %d\n", B);

getch();
return 0;
}

