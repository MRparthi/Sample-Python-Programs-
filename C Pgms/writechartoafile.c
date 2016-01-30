#include<stdio.h>
#include<conio.h>
#include<string.h>

int main() {
	FILE *Fpointer;
	char data[20] = "Array to write"; // max 20 characters 
	int length = strlen(data);
	int counter;
	Fpointer = fopen("first.txt", "a"); // this returns the address of the file opened to the Fpointer
	if (Fpointer == NULL)
	{
		printf("unable to create the file\n");
	}else{ 
	    for (counter =0; counter<length; counter++);
	    printf("writing the character %c \n",data[counter]);
	          fputc(data[counter], Fpointer);
	          }
	printf("data written successfully\n");
	fclose(Fpointer);
getch();
return 0;
}
