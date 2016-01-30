#include<stdio.h>
#include<conio.h>
int main() {
/* ternary operator functionality */
// this as well is a comment 
int count = 1;
while (count <= 10) {
	printf("this is within the while loop %d \n", count);
	count++;
}
for (int i = 0; i<=5; i++){
	if ( i == 4){
		break;
	}
	printf("this is within the for loop %d\n", i );
}
int var = 1;
do {
	printf("hi this is within do while\n");
	var++;
}while (var<=5);

int number = 5;
char ch = 'A';
switch(number){
	case 1:
		printf("this is one\n");
		break;
	case 2:
		printf("this is two\n");
		break;
	case 3:
		printf("this is three\n");
		break;
	default:
		printf("default\n");
	}
switch(ch){
	case 'A':
	case 'a':
		printf("this is A or a\n");
		break;
	case 'B':
		printf("this is B\n");
		break;
	case 'C':
		printf("this is C\n");
		break;
	default:
		printf("Alphabet\n");
	}

getch();
return 0;
}

