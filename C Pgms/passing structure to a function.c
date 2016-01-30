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
strcpy(tim.name, "tim");
tim.id = 123;

function1(tim.name,tim.id);
function2(tim);
getch();
return 0;
}

void function1 (char n[], int r){
	printf("in function1 \n");
	printf("%s\t%d\n", n,r);
}

void function2 (struct students s){
	printf("in function2 \n");
	printf("%s\t%d\n", s.name,s.id);
}
