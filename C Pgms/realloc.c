#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
/*
realloc resizes the previous allocated memory of the same block, 
if it cannot realloc it uses a new block
*/
int main() {
	char *str;
	str = (char *)malloc(13);
	if (str == NULL){
		puts("memory is not available\n");
	}else {
		strcpy(str, "learning pal");
		puts(str);
		str = (char *) realloc(str,19);
		strcat(str, " great");
		puts(str);
		free(str);
		}
	getch();
return 0;
}
