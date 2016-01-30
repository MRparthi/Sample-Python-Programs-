#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
int main() {
	char *m;
	int length;
	puts("enter the length of str to enter");
	scanf("%d", &length);
	m = (char *) malloc(sizeof(char)*length+1);
	if (m == NULL){
		puts("memory is not available\n");
	}else {
		fflush(stdin); // this clears the characters in the buffer
		puts("enter the string");
		gets(m);
		puts(m);
		free(m);
	}
	getch();
return 0;
}
