#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
int main() {
	int length,len1,len2,result;
	char str1[]= "string one";
	char str2[]= "string one";
	len1 = strlen(str1);
	len2 = strlen(str2);
	length = len1 <= len2 ? len1 : len2;
	result = memcmp (str1, str2, length);
	if (result == 0){
	printf("first %d no of characters are equal in str1 and str2\n", length);
    } else {
    printf("first %d no of characters are not equal in str1 and str2\n", length);	
	}
	
	int size = 20;
	char from[size], to[size];
	strcpy(from, "this is string");
	memcpy(to, from, size); // replace string with 5 which copies only 5 char
	printf(to);
	getch();
	return 0;
}
