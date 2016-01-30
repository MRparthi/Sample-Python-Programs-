#include<stdio.h>
#include<conio.h>

#define MARK 80

int main() {
#if MARK >= 90 
	printf("you scored above 90 and got A");

#elif MARK >= 80 
	printf("you scored less than 90 and received A-");

#else 
	printf("you scored less and got B+");

#endif
getch();
return 0;
}
   
