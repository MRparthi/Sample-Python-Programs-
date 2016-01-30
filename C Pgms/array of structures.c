#include<stdio.h>
#include<conio.h>
#include<string.h>

struct students {
	char name[10];
	int id;
}; 
int main() {
int size = 3;
struct students s[size];
int counter;
for (counter=0; counter<size; counter++){
	printf("enter the name and id of student %d\n", counter+1);
	scanf("%s%d", &s[counter].name, &s[counter].id); // we are including & as we are receving an Int value it's an option to use the same for string
}
printf("\n\n");
for (counter =0; counter<size; counter++){
	printf("name %s\t and id of student %d\n", s[counter].name, s[counter].id);
}
getch();
return 0;
}


