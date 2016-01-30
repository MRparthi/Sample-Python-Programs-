#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>

int main() {
	time_t t;
	t = time(NULL);
	puts(ctime(&t));
	puts(asctime(localtime(&t))); // local time is a function that returns struct data type

	getch();
    return 0;
}   
