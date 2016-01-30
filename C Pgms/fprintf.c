#include<stdio.h>
#include<conio.h>
#include<string.h>
// fprintf is used to write contents in a specific way or format whereas
// fputs no character specifier everything it takes as a string
int main() {
FILE *Fpointer;
char name[20];
int age;
printf("enter your name and age\n");
scanf("%s%d", name, &age); // please note the & specified in the scanf function
Fpointer = fopen("third.txt", "w");
if (Fpointer == NULL){
	printf("unable to open the file\n");
}else { 
fprintf(Fpointer, "%s\t%d", name, age);
printf("data writen successfully\n");
fclose(Fpointer);
}
getch();
return 0;
}


