#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
int main() {
	char *p;
	char data[]= "this is a char Array";
	char search = 'A' ; 
	p = (char *)memchr(data, search, strlen(data));  // strlen(data) replace with 5 to check only the first 5 chra
	if(p!=NULL){ 
		puts(p);
	}else{
		puts("character is not present");
	}
	int length,len1,len2,result;
	char str1[];
	char str2[];
	len1 = strlen(str1);
	len2 = strlen(str2);
	length = len1<=len2 ? len1:len2;
	result = memcmp(str1,str2,length);
	getch();
	return 0;
}
