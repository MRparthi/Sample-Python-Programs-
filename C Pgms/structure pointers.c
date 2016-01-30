#include<stdio.h>
#include<conio.h>
#include<string.h>

struct students {
	char name[10];
	int id;
}; 
void function1 (char [], int);
void function2(struct students);

int main() {
struct students tim;
struct students *ptr;
strcpy(tim.name, "tim");
tim.id = 123;

ptr = &tim;

printf("%s\t%d\n", tim.name,tim.id);
printf("%s\t%d\n", ptr->name, ptr->id);
getch();
return 0;
}

