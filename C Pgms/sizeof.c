#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
sizeof is used to return the size of the variable or data type
*/
int main() {
int var;
char alpha;
struct student {
	int id;
	char name[10];
} jack;
printf("%d bytes\n", sizeof var);
printf("%d bytes\n", sizeof (char));
printf("%d bytes\n", sizeof (jack));
getch();
return 0;
}

