#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
A union is a special data type available in C that allows to store different data types in the same memory location.
You can define a union with many members, but only one member can contain a value at any given time. 
Unions provide an efficient way of using the same memory location for multiple-purpose. 
*/
int main() {
union student {
	int id;
	char name;
};
union student var;

var.id = 25;
var.name = 'b';

printf("%c bytes\n", var.name);
printf("%d bytes\n", var.id); // this value would be corrupted and throws an garbage value as one field is used to store
printf("%d total size of union function bytes\n", sizeof (union student));  // returns 4 bytes as unsigned int or int needs maximum of 4 bytes to store(min 2 bytes)

getch();
return 0;
}

