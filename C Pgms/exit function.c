#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
#include<math.h>
void funct1(){
	puts("i am called  before termination\n");
	getch(); // to see the message or the output of this funct1
}
int main() {
	int counter = 1;
	if (atexit(funct1) != 0){
		puts("failed to register as the termination funct\n");	
	}
	while(1){
		printf("%d\n", counter);
		if (counter==10){
			exit(0);  // alternatively try _Exit fucntion replacing the exit 
		}
		counter++;
	}
	getch();
	return 0;
	
}
