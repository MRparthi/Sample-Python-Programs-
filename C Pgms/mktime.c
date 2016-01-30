#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>

int main() {
    struct tm t;
    time_t timeinc;
    t.tm_year = 2016-1900;
    t.tm_mon = 1;
    t.tm_mday = 22;
    
    t.tm_hour = 0; 
    t.tm_min = 0; 
    t.tm_sec = 0; 
    t.tm_isdst = 0; // day light saving 
    timeinc = mktime(&t);
    printf(ctime(&timeinc));
	getch();
    return 0;
}
