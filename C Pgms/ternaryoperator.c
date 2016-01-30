#include<stdio.h>
#include<conio.h>
int main() {
/* ternary operator functionality */
int size = 36;
int x;
size >= 36 ? printf("big size\n") : printf("small size\n");
x = (size >= 50) ? 1:0;
printf("x value is %d\n", x);
getch();
return 0;
}

