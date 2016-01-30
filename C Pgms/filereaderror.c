#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
int ferror(FILE *fp);
void clearerr(FILE *fp);
*/
int main() {
int status;
char data[20] = "hi beginners";
FILE *fp;
fp = fopen("eight.txt", "r");
if (fp!= NULL){
	fprintf(fp, "%s", data);
	status = ferror(fp);
	printf("%d\n", status);
	clearerr(fp);
	status = ferror(fp);
	printf("%d\n", status);
	if(status == 0){
		puts("no read or write error\n");
	}else {
		puts("read or write error occured\n");
	}
}else {
	puts("unable to open the file\n");
}
getch();
return 0;
}


