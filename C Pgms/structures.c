#include<stdio.h>
#include<conio.h>
#include<string.h>
// Structure is a user-defined data type in C which allows you to combine different data types to store a particular type of record.
struct students {
	char name[10];
	int age;
	int id;
};
int main() {
	struct students tim = {
		"tim",
		32,
		123,
};
printf("%s %d %d \n", tim.name, tim.age, tim.id);
getch();
return 0;
}


