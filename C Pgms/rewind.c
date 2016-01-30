#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
rewind() function. fopen returns the address of the structure(name,location,size) of the FILE
*/
int main() {
	FILE *fp;
	fp = fopen("nine.txt", "r");
	while(!feof(fp)){
		putchar(fgetc(fp));
	}
	rewind(fp);
	printf("\n");
	
	while(!feof(fp)){
		putchar(fgetc(fp));
	}	
getch();
return 0;
}



