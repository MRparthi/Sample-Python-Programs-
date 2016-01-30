#include<stdio.h>
#include<conio.h>
/*
 #Define macro_name and then identifier character_sequence // example company name
  #undef   Undefines a preprocessor macro.
  #ifdef   Returns true if this macro is defined.
*/
#define NAME "jack philip" 
#define LIMIT 10
#define TOP (LIMIT+1)

#define CHECK(no) if (no >= 10) { \  // the \ represents line continuation
printf("the no is greater than 10\n"); \
}else{  \
printf("the no is lesser than 10\n"); \
}
int main() {
	printf(NAME);
	printf("\n");
	CHECK(20);
int counter;
for (counter = 1; counter <= TOP; counter++){
	printf("%d\n", counter);
}	
getch();
return 0;
}

