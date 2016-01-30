#include<stdio.h>
#include<conio.h>
void display(int mark){
	printf("the mark received is %d\n", mark);
}
// passing array as parameter to a function
void display1(int Array[], int size){
	int counter;
	for (counter=0; counter<size; counter++){
	printf("the array element at %d is %d\n", counter, Array[counter]);
	}
}
int main() {
	int marks_array [3] = {10,52,86};
	display(marks_array[1]);
	
	int value_array [3] = {86,89,75};
	display1(value_array, 3);
    getch();
    return 0;
}
