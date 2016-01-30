#include<stdio.h>
#include<conio.h>
#include<string.h>

struct address {
	char sn[10];
	int aptno;
}; 

struct students {
	char name[10];
	int age;
	int id;
	struct address addr;
}; 

int main() {
struct students peter;
strcpy(peter.name, "peter");
peter.age = 12;
peter.id = 965;
strcpy(peter.addr.sn, "mission peaks"); // we suse strcpy as the variable sn is an array
peter.addr.aptno = 564;

printf("%s %d %d %s %d\n", peter.name, peter.age, peter.id, peter.addr.sn, peter.addr.aptno);
getch();
return 0;
}


