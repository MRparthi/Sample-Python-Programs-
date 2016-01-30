#include<stdio.h>
#include<conio.h>
#include<string.h>

union student { 
int age; 
char name[10]; 
float height;
    };  
union person { 
char color[10]; 
int weight; 
    };    
void display (union student std){
	printf("%s\n", std.name);
}
void display2 (union person *psn){
	printf("%s\n", psn->color);
}
int main() {
union student var;
strcpy(var.name, "sample");
display(var);

union person var2;
strcpy(var2.color, "there");
display2(&var2);

getch();
return 0;
}

