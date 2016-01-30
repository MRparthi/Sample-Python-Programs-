#include<stdio.h>
#include<conio.h>
#include<string.h>
// fscanf is used to read input from a file 
// fscanf will not read anything after space 
int main() {
	FILE *Fpointer;
	char data[20];
	int age;
	Fpointer = fopen("third.txt", "r");
	if (Fpointer == NULL ){
		printf("unable to open the file\n");
	}else{
		fscanf(Fpointer, "%s %d", data, &age);
		printf("%s %d", data, age);
		fclose(Fpointer);
	}

getch();
return 0;
}


