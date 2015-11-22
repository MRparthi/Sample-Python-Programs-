# There are various practices programs in this one large file, please don't try to run it as a single large file rather copy the specific code/program and run it
#this is my first bash script
echo "hello world"
pwd 
ls -l
banner "the end" this command is not working in my debian #v3.16

echo "please enter your name"
read my_name
echo "hello $my_name, it's a fine day, isn't it?"

#move a file 
mv $1 $2
cat $2 

#rename/move a file in command line parameters
echo "provide a file to be moved"
read name
mv $1 $name 
cat $name

chmod 744 $1
ls -l $1

#renames a file to file.name(user name or sign in name)
name=$1 
set `who am i`
mv $name $name.$1

#this script determines the no of files in pwd 
echo the total no of items in the pwd =$#

# Arithmetic Expressions 
a=45 b=80
echo `expr $a + $b`
echo `expr $a \* $b`
echo `expr $a % $b` 

#operator precedence BODMAS
a=10 b=5 c=4 d=15
echo `expr $a \* \( $b + $c \) / $d`

#Floating Point and the results are send to a program
a=10.5 b=5.5
c=`echo $a + $b | bc`
f=`echo $a - $b | bc`
g=`echo $a \* $b | bc`
echo $c $f $g


#Escape Sequences like carriage return, horizontal, backspace
echo "hi \nthere"
echo "i am \rcarriage return"
echo "i am \tspace tab"
echo "i am \bbacksapce option"
echo "\033[1mAmbold option\033[0m"
echo "\033[7mbackground color option\033[0m"


#TPUT Command usage 
tput clear
echo "Total no of rows on screen=\c"
tput lines
echo "Total no of columns on screen=\c"
tput cols
tput cup 15 20 
tput bold 
echo "This should be in BOLD"
echo "\033[0m Bye Bye"


#If-Then in action
echo "Enter source and target file name"
read source target
if mv $source $target
then
echo "file has been renamed"
else 
echo "file could not be renamed"
fi


#Checking values of a given number
echo "enter a number between 1 and 10"
read num
if [ $num -lt 10 ]
then 
    echo "entered number is lesser than 10"
elif [ $num -gt 10 ]
then 
    echo "the number is greater than 10"
else [ $num -eq 10 ]
    echo "the number is equal to 10"
fi


#Parsing a file for it's type in pwd
echo "Enter a filename:\c"
read fname
if [ -f $fname ]
then 
    echo "it's a file"
elif [ -d $fname ]
then
    echo "it's a directory"
elif [ -c $fname ]
then
    echo "it's a character file"
elif [ -b $fname ]
then
    echo "it's a block level either image or video file"
else
    echo "not a file"
fi


#Check whether the file in Home folder does excist or not 
echo "Enter the file name:\c"
read fname
if [ -f $fname ]
then 
    if [ -w $fname ]
        then
        echo "enter the contents to be appended to the file"
        cat >> $fname
        else 
        echo " no permission for you to write"
    fi
fi



#Comparison of two string variables

str1="stringone"
str2="stringtwo"
str3=
str4=""
[ "$str1" = "$str2" ]
echo $?
[ "$str1" != "$str2" ]
echo $?
[ -n "$str1" ]
echo $?
[ -z "$str3" ]
echo $?
[ "$str3" = "$str4" ]
echo $?


#AND OPEARATOR (-a)
echo "enter a number between 50 and 100:"
read num
if [ $num -le 100 -a $num -ge 50 ]
then 
    echo "entered number is lesser than 100 and greater than 50"
else 
    echo "no is off range 50-100"
fi


# Character count in a given input 
echo "Enter any string of your character :\c"
read var
if [ `echo $var | wc -c` -eq 2 ]
then 
    echo "you have entered an character or an number"
else 
    echo "invalid input"
fi


# Character is vowel or not using OR operator(-o)  
echo "Enter your character in lowercase :\c"
read var
if [ `echo $var | wc -c` -eq 2 ]
then 
    if [ $var = a -o $var = e -o $var = i -o $var = o -o $var = u ]
    then
        echo "you entered an vowel"
    else
        echo "not an vowel"
    fi
else
    echo "invalid input"
fi


# CASE example
echo "Enter a character :\c"
read var
case $var in 
[a-z])
    echo "you entered a lowercase alphabet"
        ;;
[A-Z])
    echo "you entered a UPPERCASE alphabet"
        ;;
[0-9])
    echo "you entered a number"
        ;;
?)
    echo "you entered a special symbol"
        ;;
*)
    echo "you entered more than one characters"
        ;;
esac

#CASE few more examples 
echo "Enter a Word:\c"
read word
case $word in
[aeiou]*|[AEIOU]*)
    echo "The word begins with a vowel"
    ;;
[0-9]*)
    echo "The word begins with a number" 
    ;;
*[0-9])
    echo "The word ends with a number"
    ;;
???)
    echo "The word is a three letter"
    ;;
*)
    echo "Have no idea what you entered"
    ;;
esac

#WHILE Loop EXAMPLE
count=1 
while [ $count -le 10 ]
do
    echo $count
    count=`expr $count + 1`
done 


#UNTIL Loop EXAMPLE 
count=1
until [ $count -ge 11 ]
do 
    echo $count
    count=`expr $count + 1`
done


#FOR LOOP EXAMPLE to look for home folders in home(pwd) 
for item in *
do
    if [ -d $item ]
    then 
        echo $item
     fi 
done


#SAMPLE Equality CHECK returns 2 for first part and 0 for other
a=4.5
b=4.5 
[ $a -eq $b ]
echo $?

[ "$a" = "$b" ]
echo $?


#INTERNAL FIELD SEPARATOR(delimter is the colon:)
text="Shell: scripting: is :really:cool"
IFS=:
set $text
echo $1
echo $2
echo $3
echo $4
echo $5


#PARSE for Username in /etc/passwd file
echo "enter username:\c"
read loginname
line=`grep $loginname /etc/passwd`
IFS=:
set $line
echo "Username:$1"
echo "USER ID:$3"
echo "Group ID:$4"
echo "Home Folder:$6"


#CODE to check whether the no of lines in a file 
echo "Enter the file name:\c"
read fname
if [ -z "$fname" ]
then 
    exit 
fi
terminal=`tty`
exec < $fname 
count=1
while read line 
do 
    echo $count.$line
    count=`expr $count + 1`
done
exec < $terminal


#SLEEP COMMAND EXAMPLE

echo "Enter a Sentence:\c"
read str
for word in $str
do
    echo $word
    sleep 2
done 


#Count the no of words and files in a text file

echo "Enter a Filename:\c"
read fname
terminal=`tty`
exec < $fname
nol=0
now=0
while read line 
do
    nol=`expr $nol + 1`
    set $line
    now=`expr $now + $#`
done
echo "Number of line:$nol"
echo "Number of words:$now"
exec < $terminal


# Fetch & Redirect Man Pages of commands to another file
for cmd in `cat commandlist`
do 
    man $cmd >> helpfile
done

#Nested Loops 
a=1
while [ $a -le 3 ]
do 
    b=1
    while [ $b -le 3 ]
    do
        c=1
        while [ $c -le 3 ]
        do
            echo "$a$b$c"
            c=`expr $c + 1`
        done
        b=`expr $b + 1`
    done
    a=`expr $a + 1`
done


#BREAK Usage 
count=1
while [ $count -le 10 ]
do
    if [ $count -eq 6 ]
        then
            break
    fi
        echo $count
    count=`expr $count + 1`
done
echo "we are out of the loop"

  
#COINTUNUE USAGE EXAMPLE
count=0
while [ $count -le 9 ]
do 
    count=`expr $count + 1`
    if [ $count -eq 5 ]
    then 
        continue
    fi
    echo $count 
done
echo "We are out of the loop"

 

#USER LOGIN EXAMPLE 
echo "Enter Username:\c"
read logname
time=0 
while true 
do
    who | grep "$logname" > /dev/null
    if [ $? -eq 0 ]
    then
        if [ $time -ne 0 ]
        then 
            echo "$logname is $time mins late to login"
        fi
        exit
    else
        time=`expr $time + 1`
        sleep 6
    fi
done


#SAMPLE FUNCTION        
youtube()
{
    echo " this is an function"
}
cool()
{
    cal
}


#MULTIPLE SCRIPTS 
#chain scripts
#cal
#script2.sh

#date
#script3.sh