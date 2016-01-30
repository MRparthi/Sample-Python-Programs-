#include<stdio.h>
#include<conio.h>
#include<string.h>
// strlen 
int main() {
char name[] = {'a', 'p', 'p', 'l', 'e', '\0'};
char name2[] = "pomegranate";
int length, length2;
length = strlen(name);
length2 = strlen(name2);
printf("the length of %s is %d \n", name, length);
printf("the length of %s is %d \n", name2, length2);
getch();
return 0;
}


