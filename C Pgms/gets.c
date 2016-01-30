#include<stdio.h>
#include<conio.h>
#include<string.h>

int main() {
FILE *Fpointer;
char input[25];
Fpointer = fopen("second.txt", "w");
if (Fpointer == NULL) {
printf("unable to open the file\n");	
} else { 
printf("enter the line to write to the file\n");
gets(input);
fputs(input, Fpointer);
printf("data written successfully\n");
fclose(Fpointer);
}

getch();
return 0;
}

