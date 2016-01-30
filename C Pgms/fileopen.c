#include<stdio.h>
#include<conio.h>
/*
"a+" mode used for both read and write without erasing the old contents in the file.
"a+b" represents working with binary file(last byte or word written to the file etc).
*/
int main() {
	FILE *Fpointer;
	Fpointer = fopen("first.txt", "w"); // this returns the address of the file opened to the Fpointer
	if (Fpointer == NULL)
	{
		printf("unable to create the file\n");
	}else{ 
	    printf("file opened successfully\n");
	}
	fclose(Fpointer);

getch();
return 0;
}
