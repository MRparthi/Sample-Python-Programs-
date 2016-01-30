#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
int main() {
	int *marks, length, counter;
	puts("enter the no of subjects");
	scanf("%d", &length);
	marks = (int *) calloc(length,sizeof(int));
	if (marks == NULL){
		puts("memory is not available\n");
	}else {
		for (counter =0; counter<length; counter++){
			printf("enter the marks of %d subjects\n, counter+1");
			scanf("%d", &marks[counter]);
		}
		for (counter =0; counter<length; counter++){
			printf("%d\n", marks[counter]);
		}
	}
	getch();
return 0;
}
