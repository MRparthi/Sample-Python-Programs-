#include<stdio.h>
#include<conio.h>
#include<string.h>

int main() {
struct person {
	int age;
	char name[5]; // structure alignment takes 2 byte
	float height;
    };
union student { 
int age; 
char name[6]; // structure alignment takes 2 byte
float height;
    };

printf("%d\n", sizeof(struct person));
printf("%d\n", sizeof(union student));

getch();
return 0;
}

