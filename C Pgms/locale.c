#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<locale.h>
/*
localeconv is for currency please refer include.c folder for locale file
*/
int main() {
    struct lconv *ptr;
    ptr = localeconv();
    printf("%s", ptr->decimal_point);
	getch();
    return 0;
}   
