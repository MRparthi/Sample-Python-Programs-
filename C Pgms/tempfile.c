#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
tmpfile() function is used to process huge amount of
data with variables and closes automatically once the pgm terminates
check stdio.h for maximum files that can be opened
*/
int main() {
	FILE *temp;
	char data[] = "hi there";
	int length = strlen(data);
	int counter = -1;
	
	if(temp != NULL){
		puts("temp file created\n");
		while ( ++counter < length){
			fputc(data[counter], temp);
		}
		rewind(temp);
		while(!feof(temp)){
			fgetc(temp);
			putchar(fgetc(temp));
		}
    }else{
		puts("unable to create the temp file\n");
	}
getch();
return 0;
}
