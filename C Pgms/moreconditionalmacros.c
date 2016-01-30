#include<stdio.h>
#include<conio.h>

#define INTEL
#define TSMC
#undef TSMC

int main() {
#ifndef AMD
printf("this is the AMD processor\n");
#endif

#ifdef INTEL 
printf("this is the intel processor\n");

#endif
getch();
return 0;
}
   
