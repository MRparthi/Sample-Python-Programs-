#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
/*
read time.h file for details regarding the syntax
don't change tm or time_t they are predefined and as well two pointers needed
*/
int main() {
	struct tm *local, *gm; // local and greenwich time
	time_t t;
	t = time(NULL);
	local = localtime(&t);
	printf("time is %d:%d:%d\n", local->tm_hour, local->tm_min,local->tm_sec);
	printf("date is %d/%d/%d\n", local->tm_year+1900, local->tm_mon+1,local->tm_mday);
	printf("time is the no of day %d of this year\n", local->tm_yday+1); // days since jan
	printf("time is the day %d of the week\n", local->tm_wday);
	
	printf("greenwich mean time\n");
	gm = gmtime(&t);
	printf("time is %d:%d:%d\n", gm->tm_hour, gm->tm_min,gm->tm_sec);
	printf("date is %d/%d/%d\n", gm->tm_year+1900, gm->tm_mon+1,gm->tm_mday);
	printf("time is the no of day %d of this year\n", gm->tm_yday+1); // days since jan
	printf("time is the day %d of the week\n", gm->tm_wday);
	
	getch();
    return 0;
}
