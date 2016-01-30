#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
#include<math.h>
int main() {
	printf(strerror(2));
	printf("\n");
	
	
	if (system(NULL) != 0 ){
		system("dir");	
	}else {
		puts("command processor is not present in your OS\n");
	}
	getch();
	return 0;
}

