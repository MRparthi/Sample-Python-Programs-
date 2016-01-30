#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
/*
storage class gives details about a variable, cpu register or stack, initial value,scope
types :- automatic,register,static, external
*/
void funct1 (){
	{
		static int z; // value is always zero
		printf("%d\n",z);
	}	
}
void funct2 (){
	extern int k; 
	printf("%d\n",k);
}
int main() {
	    extern int k;
		extern int v; 
		printf("%d\n",v);
		funct2 ();
	{
		auto int x; // garbage value
		printf("%d\n",x);
	}
	{
		register int y;  // garbage value 
		printf("%d\n",y);
	}
	funct1();
	getch();
    return 0;
}
int v = 10;
int k = 20;
