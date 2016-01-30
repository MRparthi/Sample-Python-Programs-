#include<stdio.h>
#include<conio.h>
#include<string.h>
// structures is used to store dissimilar data types 
struct students {
	char name[10];
	int age;
	int id;
} monty, philip, nas; // another way to create strucutre variable 
int main() {
	struct students tim = {0};  // tim is a structure variable, 0 is assigned to all the elements of the structure students(null for string in name) 
	struct students vio; // tim is a structure variable 
	struct students poppy;
	struct students pal = {
		"pal",
		78,
		987	
	};
vio = pal; // this copies the vio into pal structure variable
strcpy(poppy.name, pal.name); // use this only for string copy elements 
poppy.age = pal.age; // use this for integer copy elements 
puts(poppy.name);
printf("%d\n", poppy.age);
printf("%s %d %d \n", tim.name, tim.age, tim.id);
printf("%s %d %d \n", vio.name, vio.age, vio.id);
getch();
return 0;
}


