#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
#include<ctype.h>
int main() {
    char ch = '#';
    if (isalpha(ch)){
    	printf("%c is an alphabet\n", ch);
	}else{
		printf("%c is not an alphabet\n",ch);
	}
	if (isdigit(ch)){
    	printf("%c is an digit\n",ch);
	}else{
		printf("%c is not an digit\n",ch);
	}
	if (isalnum(ch)){
    	printf("%c is a digit or a alphabet\n",ch);
	}else{
		printf("%c is not an digit or a alphabet\n",ch);
	}
	/*
printable char range 0x20 through 0x7E
control chars range0 and 0x1F to 0x&F
*/
   char cha = '\n';
    if (isprint(cha)){
    	printf("%c is a printable char\n",cha);
	}else{
		printf("%c is not a printable char\n",cha);
	}
	 if (iscntrl(cha)){
    	printf("%c is a control char\n",cha);
	}else{
		printf("%c is not a control char\n",cha);
	}
	char charac = 'a';
	if (islower(charac)){
    	printf("%c is in lowercase\n",charac);
	}else{
		printf("%c is not in lowercase\n",charac);
	}
	if (isupper(charac)){
    	printf("%c is in uppercase\n",charac);
	}else{
		printf("%c is not in uppercase\n",charac);
	}
	char cha1 = 'a';
    printf("lowercase of %c is %c\n",cha1,tolower(cha1));
	printf("uppercase of %c is %c\n",cha1,toupper(cha1));
	char newchar = ' ';
	if (ispunct(newchar)){
    	printf("%c is a punctuation characer\n",newchar);
	}else{
		printf("%c is not a punctuation character\n",newchar);
	}
		if (isspace(newchar)){
    	printf("%c is a whitespace\n",newchar);
	}else{
		printf("%c is not a whitespace\n",newchar);
	}
	
	getch();
    return 0;
}
