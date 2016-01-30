#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
int main() {
/*
The C library function void *memmove(void *str1, const void *str2, size_t n) copies n characters from str2 to str1, but for overlapping memory blocks,
memmove() is a safer approach than memcpy().
*/
	int size = 11;
	char from[size], to[size];
	strcpy(from, "cool stuff");
	memmove(to, from+5, size);
	puts(from);
	puts(to);
/*
void * memset ( void * ptr, int value, size_t num );
Sets the first number of bytes of the block of memory pointed by ptr to the specified value (interpreted as an unsigned char).
*/
	char data[20];
	memset(data, 'b', 20); // initializes the letter b for 20 bytes
	puts(data);
	memset(data, 'a', 30);
	puts(data);
	getch();
	return 0;
}
