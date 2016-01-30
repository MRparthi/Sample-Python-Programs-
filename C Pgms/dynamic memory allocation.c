#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>

int main() {
int *p;
p = (int *)malloc(sizeof(int));
if (p == NULL){
	puts("fail to allocate memory\n");
}else{
	*p = 20; // 20 is stored in the allocated memory
	printf("%d\n",*p);
	free(p);
}
float *q;
q = (float *)malloc(sizeof(float));
if (q == NULL){
	puts("fail to allocate memory\n");
}else{
	*q = 20.56; // 20 is stored in the allocated memory
	printf("%f\n",*q);
	free(q);
}

getch();
return 0;
}

