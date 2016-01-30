#include<stdio.h>
#include<conio.h>

// this will search in the source program but <conio.h> will search in c directive
#include "thisisafucntionforpreprocessor.cpp"

int main() {
display();
getch();
return 0;
}
   
