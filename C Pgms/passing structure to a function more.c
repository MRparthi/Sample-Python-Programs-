#include<stdio.h>
#include<conio.h>
#include<string.h>

struct students {
	char name[10];
	int id;
}; 
void function1 (struct students *ptr);

int main() {
struct students tim ={
	"mil",
	434
};
function1(&tim);

getch();
return 0;
}

void function1 (struct students *ptr) {
	printf("%s\t%d\n", ptr->name, ptr->id);
}
