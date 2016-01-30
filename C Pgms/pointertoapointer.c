#include<stdio.h>
#include<conio.h>
int main() {
int x = 10;
int *p;
int **q; // pointer to an pointer
p = &x;
q = &p;
// u represents unsigned 
printf("the value of x is %d\n", x);
printf("the address of x is %u\n", &x);
printf("the value of p is %u\n", *p);
printf("the address of p is %u\n", &p); 
printf("the value of q is %u\n", q);
printf("the address of q is %u\n", &q);
printf("the value of x using the pointer to a pointer q is  %d\n", **q);
getch();
return 0;
}
   
