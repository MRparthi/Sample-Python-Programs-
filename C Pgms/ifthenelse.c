#include<stdio.h>
#include<conio.h>
int main() {
int age = 30;
int iq = 170;
if (age >= 33){
	printf("you are an adult\n");
} else{
	printf("you are a teen\n");
}
if (iq <= 200 && iq>= 150){
	printf("you are smart fellow\n");
}else{
	printf("you are good as well\n");
}
getch();
return 0;
}

