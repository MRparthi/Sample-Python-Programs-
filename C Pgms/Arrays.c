#include<stdio.h>
#include<conio.h>
// array is used to store collection of data items of same datatype
int main() {
	char arr [] = {'A','B','C','D','E'};  	// this is a string array
	printf("%c\n", arr[0]);
	char name [] = {'A','B','C','D','E','\0'};
	printf("%s\n", name);
	char firstname[]= "mike";
	printf("%s\n", firstname);
	
	int size = 6;
	int marks [size];
	int counter;
	printf("enter the marks for 6 students\n");
	for (counter = 0; counter<size; counter++){
		scanf("%d", &marks[counter]);
	}
	for (counter = 0; counter<size; counter++){
		printf("the mark at marksarray index %d is %d\n", counter, marks[counter]);
	}
	getch();
    return 0;
}

