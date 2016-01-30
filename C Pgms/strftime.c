#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
/*
I is Hour, S is seconds, Z is time zone, p is am or pm 
*/
int main() {
    struct tm *ptr;
    time_t t;
    char str[100]; // this stores the formatted time 
    t = time(NULL);
    ptr = localtime(&t);
    strftime(str,100,"the time is %I %p %M %S seconds\ntime zone is %Z", ptr);
    puts(str);
	getch();
    return 0;
}   
