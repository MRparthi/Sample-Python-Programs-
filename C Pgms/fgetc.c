#include<stdio.h>
#include<conio.h>
#include<string.h>
// fgetc gets the character from the file 
int main() {
FILE *Fpointer;
char ch;
Fpointer = fopen("third.txt", "r");
if (Fpointer == NULL) {
	printf("unable to open th file\n");
}else{ 
  while (!feof(Fpointer)) {
 ch = fgetc(Fpointer);
  	printf("%c", ch);
  }
  fclose(Fpointer);
}
getch();
return 0;
}


