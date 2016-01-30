#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
tmpnam() is a function and L_tmpnam+1 is the length of the tmpnam 
that includes the null character
*/
int main() {
	char name[L_tmpnam+1];
	tmpnam(name);
	puts(name);
getch();
return 0;
}

