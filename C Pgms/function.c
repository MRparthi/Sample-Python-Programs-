#include<stdio.h>
#include<conio.h>
// this is a function pgm
void display(){
	printf("this is within the function display\n");
}

void function1();
void function2();

int main() {
	display();
	function1();
	getch();
    return 0;
}
void function1(){
	printf("in fucntion1\n");
	function2();
	printf("end of all the functions\n");
}

void function2(){
	printf("in fucntion 2\n");
}
