#include<stdio.h>
#include<conio.h>
#include<string.h>

int main() {
typedef int alternativenameforint;
alternativenameforint  age;
age = 10;
printf("%d\n", age);

typedef struct {
	int age;
	char name[10];
} person;

person var;
var.age = 25;
strcpy(var.name, "patrick");
printf("%d\t%s", var.age, var.name);

getch();
return 0;
}

