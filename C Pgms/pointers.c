#include<stdio.h>
#include<conio.h>
/*
A pointer is a variable whose value is the address of another variable, i.e., direct address of the memory location.
*/
int main() {
int x = 10;
int *j;
j = &x;
printf("the value of x is %d\n", x);
printf("the address of x is %p\n", &x); // & address of operator
printf("the value of j is %d\n", *j); // * value of operator 
printf("the memory address strored in the pointer j is %p\n", j);  
    getch();
    return 0;
    }
    
