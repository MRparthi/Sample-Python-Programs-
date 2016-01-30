#include<stdio.h>
#include<conio.h>
#include<string.h>
/*
returns 0 if successfull otherwise nonzero if unsuccessful
if the file is within the folder then foldername/filename
*/
int main() {
if(rename ("five.txt", "six.txt")==0){ 
puts("file renamed successfully");
	}else {
		puts("file not renamed");
	}
int status;
status = remove ("seven.txt");
printf("%d\n", status);
if (status==0){
puts("file deleted successfully");
	}else {
		puts("file not deleted");
	}		
getch();
return 0;
}


