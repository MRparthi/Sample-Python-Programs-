#include<stdio.h>
#include<conio.h>

// scope of an variable
void funct1();
int a = 0;
	
int main() {
	printf("the value of a inside the main is %d\n", a);
	funct1();
	getch();
    return 0;
}

void funct1(){
	int a = 20;
	printf("the value of a outside the main is %d\n", a);
}
