#include<stdio.h>
#include<conio.h>

void add (int, int);
int add1 (int, int);
int main() { 
   add(10, 20);
   int temp = add1(50,89);
   printf("the result of the add1 function is %d\n", temp);
   getch();
   return 0;
}

void add (int a, int b){
	int c = a+b;
	printf("the result of the add function %d + %d is %d\n", a,b,c);
} 

int add1 (int d, int e){
	int result = d+e;
	return result;
} 
