#!/usr/bin/perl
print "Hello world\n";

$today = "Monday";
print "$today\n";

$name = "Tom";
print "Hi My name is $name\n";

$total = 4 + 9;
print "the total is $total\n";

$var1 = "one";
$var2 = "two";
print "string concatenation is ".$var1." and ".$var2."\n";

$a = 1;
print $a++." post-increment operator a++"."\n"; #post-increment operator 
print ++$a." ++a pre-increment operator"."\n"; #pre-increment operator
print $a++."\n";

#@array representation 
#@hash representation or associative array 

@fruits = ("apple", "grapes", "pome");
print "$fruits[1]\n";

push (@fruits, 'oranges'); #adds oranges as the last element
print "@fruits\n";
pop (@fruits); #removes oranges as the last element

print "@fruits\n";

$numFruits = @fruits;
print "$numFruits\n";


shift (@fruits); #shift will remove 1st element from the array 

print "First element in the Array "."@fruits[0]\n";

unshift (@fruits, "mango"); #will add mango as the 1st element

print "@fruits\n";

$food = join("... and ", @fruits)."\n";
print "$food";

@ordinate = ([0,1], #multidimensional array
             [2,3],
             [4,5],
             [6,7]);

print $ordinate[0] -> [1]."\n"; #this represents 1st row and within it 1st #element

@arr_str = qw(this is cool);
print $arr_str[0]."\n";

@words = ("uno", "dros", "thres", "cuatros");
print splice (@words, 1, 2); #this will retrieve any element from
#the array starting from 1 and 2 elements retireved.

print "\n";

print splice (@words, 1)."\n";

print splice (@words, 1, 1, ("cinco"));

print "\n";
print $words[1];
print "\n";
#@words= sort(@words); try sorting the array based on alphabets


%movies = (                  #this is for hash creation
          "schindlers"=> "liam",
          "braveheart"=> "mel",
          "godfather" => "marlon",
          "patriot"   => "gibson"
           );

print $movies{'braveheart'};
print "\n";

delete $movies{"patriot"};
@value_arr = values (%movies);

print @value_arr;
print "\n";

@keys_arr = keys (%movies);
print @keys_arr;
print "\n";

%multi_dimen = 
(
       "attire" => 
       {
                "shirt"=> "red",
                "trouser" => "white"
       },
       "bags" =>
        {
                "backpack"=> "school",
                "stroller" => "travel"
        }
);

print $multi_dimen{"bags"}->{"stroller"};
print "\n";

$a = 1;
print "lesser than 2" if $a < 2;
print "\n";

$a=3;
while ($a<5)
{
   $a++;
   print $a;
   print "\n";
}

#iterating over the for loop
$i = 1;
for(; $i<10;) #alternative way
{
 	print "$i\n";
	$i++;
}

#looping over an array 
@tech = ("java","csharp","ios","android","python");
for ($i=0; $i < @tech; $i++)
{
 	print "the technology is $tech[$i]\n";
}

#nested loops, mulitplication table
for ($i=1; $i < 6; $i++)
{
 	for ($k=1; $k < 6; $k++)
	{
 	print "$i multiplied by $k is " .$i*$k."\n";
	}

}

#foreach example
@subjects =("math", "science", "enish");
foreach (@subjects)
{
	print $_; #use special(_) variable to iterate rather i
	print "\n";
}

#iterate over hash 
%ages =
(
	"tom" => 24,
	"sim" => 25,
	"mike" => 26,
	"vola" => 27
);

foreach (keys (%ages))
{
	print "name is $_ age is $ages{$_}\n";
}

#Regular Expression 
$string = "hi there";
$sub_string = substr($string, 2, 4);
print "$sub_string\n";

#locate a substring
$string = "how you doing";
$string_ind = "you";
$pos = index($string, $string_ind);
print "$pos\n";

#UPand Low Case ucfirst,lcfirst first uppercase 
$original = "loWercaSE";
$low = lc($original);
print "$low\n";
$up = uc($original);
print "$up\n";

#Doc String example
$a = <<BOUNDARY;
" this is an document string 
that describes the progm use...
BOUNDARY
print $a;

#Pattern Match 
$sentence = "what is your country"; #$_(default vari)= "dfdfds" 
if ($sentence =~ m/is/) #if used with defa vari then use/#pelican
{
	print "matched string is $&\n";
}
else
{
print "no match\n";
}

#case insensitive match
$_ = "this is perl pgm";
if (/pERL/i)
{
 print "match\n";
}
else { 
	print "no match\n";
}

# globally for all instances of occurances of any letter
$_ = "Jeev is my jeeV because she is JEV";
@matches = /Jeev/gi;
foreach (@matches)
{
	print "$_\n";
}

#Metacharacters example matches any character 
$_ = "A fev, jev and ev Jev";
@matches = /.ev/g;
foreach (@matches)
{
	print "$_\n";
}

# more Metacharacters example character set (\.)[.]escape seq
#[^h] matching every chracter except h 
$_ = "A JEEV, dev and  azEV VeV LOev ";
@matches = /[a-z]ev/gi;
foreach (@matches)
{
	print "$_\n";
}

#Quantifiers example  *, ?(character appear 0 or moretime), 
#{n}, {min, 6} ( 6 instances of the character) {min,max}
$_ = "Deep, DEEEEP, Deeeeeeeep";
@matches = /De+p/gi;
foreach (@matches)
{
	print "matched words are $_\n";
}


# more quantifier (^ represent not equal to)
$_ = "the even no 2, 4, 68 are good";
@matches = /[a-z]+/gi;
foreach (@matches)
{
	print "pulling words out of a statement $_\n";
}

# pulling no's from a statement 
$_ = "the even no 2, 4, 68 are good";
@matches = /[0-9]+/gi;
foreach (@matches)
{
	print "pulling no out of a statement $_\n";
}

#counting total no of elements in array 
@phone = ("lg", "iphone", "android");
$total = $#phone;
print "$total\n";

#arrays merge, reverse, sort
@array1 = ("ten","twenty","thirty");
@array2 = ("forty", "fifty", "sixty");
@array3 = (@array1, @array2);
print "@array3\n";

@reversed = reverse(@array3);
print "@reversed\n";

@array4 = (1,4,2,0,3,6,5);
@sort1 = sort(@array4);
@sort2 = sort{$b <=> $a} (@array4);
print "@sort1\n";
print "@sort2\n";

@array5 = ("green", "blue", "red");
@sort3 = sort{$b cmp $a} (@array5);
print "@sort3\n";

#array creation without quotes
@array = qw(pen,paper,book);
print "@array\n";
@numbers = (1..5);
print "@numbers\n";

@array = qw(laptop, ipad, phone, iwatch, i3d);
$count = 1;
foreach $gadget (@array){
print "Gadget $count: $gadget\n";
$count ++;
}

@numbers = (1..10);
foreach $number (@numbers){
 $number = $number * 10;
 print "$number\n";
}

$_ ="the room was full of boxes and bins";
/([a-z]oxes) and (bins)/;
print "$1\n";
print "$2\n";

$_ = "50000000000000000";
/50*/; #greedy match *
print "$&\n";

$_ = "50000000000000000";
/50*?/; #Non-greedy match *?
print "$&\n";


$_ = "50000000000000000";
/50+?/; #Non-greedy match ?
print "$&\n";

$_ = "50000000000000000";
/50{2,4}?/; #Non-greedy match ? only two zeroes and max 4 zeroes
print "$&\n";

$_ = '"you are amazing," said by jack, "you are cool"';
@within_quo = /['"].*?['"]/g; #Non-greedy match *? g is a modifier
foreach(@within_quo)
{
	print "$_\n";
}

#space match
$_ = "space between the words to be matched";
@space = s/ //g; #g is a modifier,s is a search and replace and not #optional 
print "$_\n";

#Getting input from User
#print "what is your name";
#$name = <>;
#chomp $name;
#print "hello $name\n"

#Opening a File 
#print "which file";
#$fname = <>;
#chomp $fname;
#if (open WORKING, $fname);
#{
#	@stats = stat $fname;
#	read WORKING, $contents, $stats[7];
# 	print $contents;
#}
#else
#{ 
#	print "invalid file";
#}

#Opening a Directory
opendir THEDIR, "."; # . refers to the pwd and .. refers parent directory
while ($filename = readdir THEDIR)
{
	 print $filename."\n";
}

#Sunroutine Example 
sub Chai
{
    print "$_[0]\n"; #this prints only the first argument in the list
    foreach (@_)
	{
	print "these are the arguments:$_\n";
	}
}
Chai ("lemontea", "cardamomtea", "spicytea");


#WHILE Condition 
@array = qw(letter word number symbol);
$count = 0;
while ($count <= $#array){
print "$array[$count]\n";
$count++;
}

#MAP Function 
@array = (1..10);
map {$_ = $_ * 2} (@array);
print "@array\n";

@array = qw(apple banana grapes oranges jackfruit);
map {$_ = uc($_)} (@array);
print "@array\n";	

@array = (1..10);
@array2 = grep {$_>5}@array;
print "@array2\n";

@array = qw(apple banana grapes oranges jackfruit);
@array2 = grep{$_ =~ "n"} @array; #~contains n in the string
print "@array2\n";

#HASH Creation, SORT and REVERSE
%hash = ();
$hash {name} = "john";
$hash {age} = 25;
$hash {city} = "san francisco";
print "$hash{name}\n";

%hash = (
"name","john",
"age","25",
"city","san francisco"
);
print "$hash{age}\n";
if (exists($hash{age})){
print "key exist\n";
}
else { 
 print "key doesn't exist!\n";
}

%reversed = reverse %hash;
foreach $key (keys %reversed){
print "$key - $reversed{$key}\n";
}
foreach $key (sort keys %hash){
print "$key\n";
}

#%hash = (%hash1, %hash2); # this is merging hashes

#SPLIT, JOIN and REPLACE Function
$words = "this is an simple array";
(@words) = split(/ /, $words);
print "@words\n";
$joined = join(" ", ("you", "are", "awesome"));
print "$joined\n";
substr($words, length($words)-5, length($words), "statement");
print "$words\n";

#RANDOM and ROUNDING numbers 
$random = rand(100);
print "$random\n";
$random1 = int rand(100);
print "$random1\n";
$rounded = sprintf "%.2f", $random; #sprintf is a rounding function
print "$rounded\n";

#TIME function
$time = localtime(time);
print "$time\n";
$time = gmtime(time);
print "greenwich mean time is $time\n";

#REGULAR EXPRESSION
$string = "tHis is a stRing";
if ($string =~ m/this is a string/gi){
print "its a match\n";
}
$string = "tHis is a stRing";
$string =~ s/this/that/gi; #s is a Substitution
print "$string\n";
$string = "i see the load";
$string =~ tr/l/r/; #ti is a translation modifier 
print "$string\n";
$string = "i seeeeeee the road";
$string =~ s/e+/ee/; #s is substution
print "$string\n";
$number = 1234;
if ($number =~ /^\d+$/){
print "its a number\n";
}
$ltts = "xyz";
if ($ltts = /^[A-Za-z]+$/){
print "its letters\n";
}

#OPENING a file 
open (FILE, "file") or die("ERROR"); #die if file could not be found
print <FILE>;
close (FILE);
open (FILE, "file") or die("ERROR"); #die if file could not be found
@array = <FILE>;
close (FILE);
print @array;
foreach $line (@array) {
chomp($line);
print "$line\n";
}

#WRITING to a file 
open (FILE, ">file"); #> this one appends to a file 
print FILE "Hello\n";
close (FILE);
#WRITING to a file 
open (FILE, ">>file3");
flock (FILE,2);         #file lock another user cannot use it open it 
print FILE "Hello there\n";
close (FILE);


