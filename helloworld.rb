puts "hello world"
c = 3 + 5 
puts c 
puts 15%4
age = 10
if age > 100
	puts "you are too old for the stuff"
elsif age < 5
	puts "you are too young for the stuff"
else 
	puts "you are good to go"

puts my_name = "abcdegD"
puts my_name.capitalize
puts my_name.upcase
puts my_name.downcase
puts my_name.reverse
puts my_name.length

name = "alpha beta gamma"
puts name[2..9]

sentence = " life is good with coding"
puts sentence.split()
date = "11/10/2015"
puts date.split("/")
array = ["tom", "jim", "jack"]
puts array
puts array[-2]
puts "#{array[2]} is a guy"

label = {
"new_hash1" => "uno",
"new_hash2" => "deux",
"new_hash3" => "thrice",
}
puts label["new_hash1"]
puts label.keys
puts label.values

indexing = Hash.new {
indexing["a"] = "first"
indexing["b"] = "two"
indexing["c"] = "three"
}
puts indexing["b"]
end
def func
	puts "this is first function"
end
func

fruits = ["apple", "grapes", "pome", "banana", "oranges"]
for i in fruits
	print "#{i} "
end
puts

counter = 1
for i in fruits
	puts "#{counter} : #{i}"
	counter += 1
end
counter = 5
for i in fruits
	puts "#{counter} : #{i}"
	counter -= 1
end

def numdiv(n)
	remaind = n % 4
	if remaind == 0
		puts "n is divsible by 4"
	else
		puts "n is not divsible by 4"
	end
end
numdiv(16)
numdiv(0)
numdiv(4.16)
numdiv(16/4)

no = 1
loves = ["rainbow", "trees", "rain", "books", "songs", "skiing"]
loves.each do |item|
	puts "#{no} : #{item}"
	no += 1
end
bomber = 10
while bomber >= 0
	puts bomber
	bomber = bomber - 1
end
puts "blast off"

time = 10
until time < 1
	puts time
	time -= 1
end

down = 30
loop do
	puts "reduced by two values #{down}"
	down -= 2
	break if down <= 0
end
puts "thats it"

any_num = 100
loop do 
	any_num -= 5
	next if any_num % 2 != 0
	puts "#{any_num}"
	break if any_num <=0 
end 

nested_arr = [[1,2,3],[9,8,7],[12,34,45]]
multidim_arr = [["fred", "jack","tom"], ["jack", "kiev", "tim"]]
multidim_arr.each {|x| x.each {|y| puts y}}

numbers = ["uno", "dos", "tres", "quatros", "cinco"]
numbers.sort! { |a,b| a.length <=> b.length }
puts numbers

def sortedlist(array, reverse = false)
	if reverse == false 
		array.sort {|a,b| a <=> b}
	else
		array.sort {|a,b| b <=> a}
	end
end

flowers = ["daffodils", "lilly", "lotus", "rose", "jasmine"]

puts "proper order is #{sortedlist(flowers)}"
puts "reverse order is #{sortedlist(flowers, true)}"

oldway_symbol = {
	:uno => 1,
	:dros => 2,
	:tres => 3,
	:cuatros => 4
}

puts oldway_symbol[:uno]

newway_symbol = {
	uno: 1,
	dros: 2,
	tres: 3,
	cuatros: 4
}

older = newway_symbol.select { |k, v| v > 1}
puts older 
older = newway_symbol.select { |k| puts k}
older = newway_symbol.select { |k, v| puts v}

puts " this is correct" if 4 > 3
puts " i like butter" unless 5 < 4

puts 40 < 30 ? "yes it is" : "no it is not "


fav_bird = nil
fav_bird ||= "emu"
fav_bird ||= "peacock"
fav_bird = "parrot"

print fav_bird

print "love " << "all"

my_friends = ["sub","pri","suv","vib"]

last_friend = "tuh"
one_more_friend = "sah"
first_friend = "tha"

puts my_friends.push(last_friend)
puts my_friends.unshift(one_more_friend)
puts my_friends.unshift.insert(0, first_friend)

array_no = [1,2,3,4]

times = array_no.map {|no| no * 2}
puts "#{times}"

def method
	puts "we are in the method"
	yield 
	puts "we are back in the method"
end
method {puts "excuse me block is on the way"}

def names(object)
	yield (object)
	yield ("tim")
	yield (object)
end
names ("Mike") {|n| puts "the name is #{n}"}

age = [11,19,34,45,56,67]
all_age = [12,23,34,45,67]

new_age = Proc.new {|x| x >= 20}

new_group = age.select(&new_age)
old_group = all_age.select(&new_age)

puts new_group
puts old_group

to_add = Proc.new{|x,y| x +y}
value = to_add.call(6455,67)
puts value 

to_mult = lambda {|x,y| x * y}
result = to_mult.call(6455,67)
puts result

def trees
	leaf = lambda {return "hi there"}
	leaf.call
	puts "this is after call"
end
puts trees

puts "this is stri".class.name
puts [1,2,3,34].class.name

class Player
	def initialize(name,team,position,number)
       @name = name 
       @team = team 
       @position = position
       @number = number
    end
    def details
       puts "#{@name} is my appelation and my team is #{@team}. My number is #{@number} and my position is #{@position}"
    end
$Player_info = puts "this is the full information of an player"
end
person1 = Player.new("tom", "warriors", "forward", 11)
person1.details

$Player_info

(1..60).each do |num| 
	if num % 3 == 0 && num % 5 == 0
		puts "fizzbuzz"
	elsif num % 3 == 0
		puts "fizz"
	elsif num % 5 == 0
		puts "buzz"
	else
		puts num
	end
end


=begin	
this is 
an multiline 
comment	
=end

# this is single line comment 

test = 1 == 2
puts test

test_new = (2 >=1)
puts test_new


x = 0
unless x > 2 
	puts "x is lesser than 2"
else 
	puts " x is greater than 2"	
end
# creating arrays through different methods 
names_new = Array.new
actors = Array.[]("kamal", "surya")
actresses = Array.new(3)
tamil = Array["schindlers", "gangster"]

stack = Array.new 
stack.push 4
stack.push 5
stack.push(stack.pop + stack.pop)
print stack
puts stack[0]

puts actors[-1]

def average(*grades)
	sum = 0
	for g in sum..grades.length
		sum += grades[g].to_f
	end
	sum / grades.length
end

avg = average(2,4,6,8)
puts "Average is #{avg}"

def block_test 
	# comment 
	yield
end

block_test do
	puts"inside block"
end

# block with parameters
def para_block(a,b)
	yield a + b
end
para_block(4,5) { |m| puts m }

# block with parameters
def param_block(a,b)
	yield a, b
end
param_block(6,5) {|a, b| puts a + b}

#block passed a parameter to an method
def pass_block (&block)
	block.call
end

pass_block {puts "hi there"}

class Coord
	def initialize(x,y)
		@x, @y = x,y
	end
#WRITER
	attr_reader:x
	attr_reader:y

#SETTER
    attr_writer:x
	attr_writer:y

def to_s 
	"(#{@x}, #{@y})"
end
end
point = Coord.new(4, -6)
puts "the point is #{point.to_s}"
point.x = 1
point.y = 2
puts "the point is (#{point.x}, #{point.y})"


class ColorPoint
	def initialize(x, y, color)
		@x, @y = x,y
		@color = color
	end

# GETTER AND SETTER making color to be read-write
	attr_accessor:color
# GETTER AND SETTER function
	attr_reader:x
	attr_reader:y
end

cp = ColorPoint.new(3, 5, "red")
puts "colorpoint is #{cp.x}, #{cp.y}, #{cp.color}"

cp.color = "blue"
puts "colorpoint is #{cp.x}, #{cp.y}, #{cp.color}"

#Inheritance in Ruby 

class Rectangle
	def initialize(width,length)
		@w, @l = width, length
	end

	def area
		@w * @l
	end
	def perimeter
		2 *@w + 2 *@l
	end
end

class Square < Rectangle
	def initialize(side)
		super(side, side)
	end
	def perimeter
		4*@w 
	end
end
rectangle = Rectangle.new(4,3)
puts "Area for rectangle: #{rectangle.area}"
puts "Perimeter for rectangle: #{rectangle.perimeter}"

square = Square.new(4) #square takes only one parameter
puts "Area for square: #{square.area}"
puts "Perimeter for rectangle: #{square.perimeter}"

a = 1 
until a == 100  #until gets executed only when it is false
print a, "\n"
a += 1
end

a = 90
while a <= 100
	print a, "\n"
	a += 5
end


# 0...4 goes to 0,1,2,3
# 0..4 goes to 0,1,2,3,4

def sample_func(*test)
	puts "the no of parameters is #{test.length}"
	for i in 0...test.length
		puts "the parameters are #{test[i]}"
	end
end
sample_func "uno", "dros", "tres"

age = 10
case age 
	when 0..2 
		puts "baby"
	when 3..7
		puts "kid"
	when 8..11
		puts "adult"
	when 12,13,14,15 #another way as well
		puts "teen"
	else
		puts "man"
	end

#example attr_accessor:height,:width
# in def to_s you must have puts " #{@x}" or "#{class instance name}" or puts just class instance 

class Animal
    #SETTER
	attr_writer:name,:type,:gender

	#GETTER
	attr_reader:name,:type,:gender

end
four_foot = Animal.new
four_foot.name = "Tiger"
four_foot.type = "wild"
four_foot.gender= "male"

puts four_foot.name, four_foot.type, four_foot.gender

class Birds
	attr_accessor:place,:color,:food

	def to_s
		return " the bird information is #{place}, #{color}, #{food}"
	end

end

pigeon=Birds.new
pigeon.place = "homes"
pigeon.color = "white"
pigeon.food = "nuts"

puts pigeon.place, pigeon.color, pigeon.food

puts pigeon

#the scope of the class variable remains the same in both the object 
class Students
	@@count = 0 
	def initialize (m,f)
		@m=m
		@f=f
		@@count += 1
	end

	def count_method
		puts "the count is #{@@count}"
	end 
    def self.somemethod()
    	puts "this is a self method and can be called directly using the class name and not by an instanct object"
    end
end


person = Students.new("tom", "noila")
person2 = Students.new("sim", "samiya")

person.count_method
person2.count_method

Students.somemethod


3.times { puts "hello"}
3.times { print "hello"}

new_dict = Hash.new

new_dict = {
	"benz" => 1,
	"toyota" => 2,
	"general" => 3,
	"ford" => 4
}

puts " the car i love is #{new_dict["benz"]}"

for i in 0...4
	puts " the i value is #{i}"
end

(0..5).each do |k|
	puts " i is #{k}"
end

3.upto(9) {puts "hi"}

7.downto(3) {|i| puts "#{i}"}


for r in 1..5 
	for c in 1..5 
		print "#{c}"
	end
	print "\n"
end

for r in 1..5 
	for c in 1..5 
		print "#{c}"
		break if c == 3
	end
	print "\n"
end

for i in 0..5 
	if i < 2 
		next 
	end
	puts " the value of i is #{i}"
end

#Block codes with parameter
def test_block()
	puts "inside the block"
	yield("num", 1)
end
test_block {
	|x,y| puts "in the yield block "  +  x + " " + y.to_s
}

#PASSING A BLOCK TO A METHOD
def test_new (&calling_the_block)
	3.times do (calling_the_block.call) end
end

test_new{
	puts "hello world"
}

#MODULE DECLARATION 

module Sample 
	L = 23

	def Sample.math(x)
		puts Math.sin(x)
	end
	def Sample.math1(x)
		puts Math.cos(x)
	end
end
puts Sample::L

#MODULE APPLICATION 
module Unix
	GOOD = 0 
	SUPER= 1 
	def Unix.status(skill)
		if skill == 0
			puts "that's ok"
		else 
			puts "that's awesome"
		end
	end
end

Unix.status(Unix::SUPER)

#DEFINING A CLASS  WITHIN A MODULE 

module Human
	class Male 
		def initialize 
			puts "I am an Indian"
		end 
		def customize
			puts "I am an south indian"
		end
	end
end

ram = Human::Male.new
ram.customize


=begin 
REQUIRE_RELATIVE "file name"
=end

# below program is an imported file
# require_relative "class_sample.rb"

# #MODULE AND CLASS IMPLEMENTATION 

# require_relative "module_example"
# class Decade 
# 	include Week
# 	$no_of_years = 10 
# 	def no_of_months
# 		puts "Today is " + Week::First_day
# 		number = $no_of_years * 12
# 		puts "no of months in 10 year is " + number.to_s
# 	end
# end
# d1 = Decade.new

# puts Week::First_day

# Week.weeks_in_month
# Week.weeks_in_year

# d1.no_of_months


#EXAMPLE OF MULTIPLE INHERITANCE not directly but using through MIXINS 

module A
	def a1 
		puts "we are in a1 method of module A"
	end
	def a2
		puts "we are in a2 method of module A"
	end
end

module B
	def b1 
		puts "we are in b1 method of module B"
	end
	def b2
		puts "we are in b2 method of module B"
	end
end


class Inheritance
	include A
	include B
end

s = Inheritance.new
s.a1
s.a2
s.b1
s.b2

#ARRAY CREATION

tables = Array.new(5, "harrison")
puts tables

series = Array(0..9)
puts series

puts series.at(5)

puts "the number is lesser than 10" if series.include?(8)

puts series.first
puts series.last
puts series.first(3)
puts series.reverse
puts series.index(2)

new_series = Array(0..4)

final_series = series - new_series

puts final_series

x = [ 5,4,3,68]
puts x.sort
puts x.sort.reverse

#COPY ARRAY 

Aa = ["a","b","c"]
Bb = Array.new(Aa)
puts Bb

Cc = [1,2,3]

#concat of two arrays or a.concat(b)
Dd = Aa << Cc

puts Dd

testA = ["h","e","l","l"]

testA.delete("h")
puts testA
testA.delete(0)
puts testA
puts testA.size

puts testA.empty?

puts testA.shift 

puts testA.equal?(Dd)

#DUPLICATION REMOVAL VERY IMPORTANT 

H = [1,2,2,4,56,7]
J = [1,2,3,7,8,9,0]

L = H|J
puts L

Y = H&J
puts Y 

cells = [["a","b","c","d"],
         ["e","f","g","h"]
        ]
puts cells [1][2]

cells.each  do |row|  #this row(0) will be iterated once one
	row.each do |col| #this row(1) will be iterated for five times
		print col.to_s + " "
	end
	puts
end

box = [] #creating an one d array 
10.times do |row| #creates 10 rows 
	box[row] =[] # each row(0),(1) .. 10 is empty
	10.times do
		box[row] << 0
	end
end
for row in box 
	puts (row.inspect) #prints row by row 
end

countries = {"US" => "United States",
	"IN" => "India",
	"FR" => "France",
	"CN" => "Canada"
}

puts "no of counteries #{countries.length}"

puts countries.keys.inspect
puts countries.values.inspect

countries.each {|k, v| puts "key: #{k}, val:#{v}"}
new_countries = countries.invert
puts new_countries

puts countries.fetch("FR")

puts countries.values_at("IN", "CN")

puts countries.has_key?("IN")

puts countries.include?("CH") #same has key

second_countries = countries.dup #dup duplicates 

puts second_countries

puts countries.eql?(second_countries)

second_countries.clear

puts countries.assoc("IN").inspect

#REGULAR EXPESSION
alpha = "i have 45 dollars"
alpha.scan(/\d+/) {|b| puts b}  # \d+ fetches any no of numbers from the string

tuna = "that is wonderful news"
tuna.scan(/[tes]/) {|k| puts k}

"i love you very much".scan (/[a-h]/) {|l| puts l} #character class

puts "your name cannot numbers" if "sam89" =~ /[0-9]/

puts "telephone numbers cannot contain numbers" if "454fgff45df".match(/[a-z]/)


puts rand # produces random numbers from 0 - 0.99
puts rand * 10 
puts (rand * 10).to_i
puts rand(10) #prints range from 0-9

puts rand(0..10)

puts (0..5).map{rand(0..10)}

srand 123 #this generates same random numbers twice 
puts rand 

srand 123
puts rand 

srand 707
puts rand(10)

srand 707
puts rand(10)

p [1,23] #pretty 


# MORE INHERITANCE

class Person
	attr_accessor :name, :age, :trait
end

class Sportsman<Person
	attr_accessor :sports
end

sp = Sportsman.new
sp.name = "jack"
sp.age = 30
sp.trait = "running"
puts sp.inspect


class Plants
	attr_accessor :color, :fruits
	def initialize (color, fruits)
		@color = color
		@fruits = fruits
	end
	def identify 
		puts "Annual plant color is #{color} and i am of type #{self.class}"
	end
end

# the above constructor cal also be initialized inside the child or sub or derived class as well

class Annuals < Plants
	def size
		puts "somewhat big"
	end

end

basil = Annuals.new("yellow", "no fruits")
flowering = Plants.new("any", "yes i bear fruits")
puts basil.inspect
puts basil.size
puts basil.identify

puts flowering.identify

#OPERATOR OVERLOADING 
class Computers
	attr_accessor :name, :type
	def initialize(name,type)
		@name=name
		@type=type
	end
	def + (other_object_instance)
		return Computers.new("#{self.name}#{other_object_instance.name}", "#{self.type}#{other_object_instance.type}")
	end
end


	class Latest < Computers

	end


small = Latest.new("lappy", "mobile")
medium = Latest.new("desktop", "standalone")
puts (small+medium).inspect


include Comparable 
def <=> (other)
	self.name <=> other.name
end
puts "the"<=>"jack" #prints 1 as LHS < RHS based on first letter of ASCII, equal prints 0, -1 other

puts 100<=> 200

class Operator_overload
	attr_accessor :any_name
	def initialize(name)
		@any_name = name
	end
	def <=> (other)
		return self.any_name<=>other.any_name
		end
	end
	obj = Operator_overload.new("Kyla")
	obj1 = Operator_overload.new("Lorine")

	puts obj > obj1
	puts obj < obj1

	class Opt_ovl 
		attr_accessor:my_num
		def initialize(num)
			@my_num = num
		end
		def +(other)
			return self.my_num+other.my_num
		end

		def *(other)
			return self.my_num*other.my_num
		end
	end
	a = Opt_ovl.new(5)
	b = Opt_ovl.new(10)
	puts a + b 
	puts a * b 

#[] reference or Subscribt Operator Overloading, []= element set operator
class Test
	attr_accessor :arr
	def initialize(*arr)
		@arr = arr
	end
	def [] x
		return @arr[x]
	end
	def []=(x,values)
		return @arr[x] = values
	end
	def <<(x)
		@arr<<x
	end
end

a = Test.new(0,1,2,4)
puts a[3]
a <<89
puts a[4]


#FROZEN OBJECTS to stop changing the value of an object 

class Mouse
	attr_accessor :tail_size, :height
	def initialize (t, h)
		@tail_size = t 
		@height = h 
	end
end
mouse = Mouse.new(23,89)
puts mouse.tail_size
puts mouse.height

mouse.freeze

if (mouse.frozen?)
	puts "mouse frozen"
else 
	puts "mouse is free to move"
end
# mouse.tail_size = 78 #you cannot change the object that's frozen earlier,receive an runtime error

# 1. PROC
proc_object = Proc.new{ puts "In Proc Object"}
proc_object.call 

#2 PROC Creation using lambda

proc_object = proc{ puts "within proc Object" }
proc_object.call 
puts "#{proc_object.lambda?}"

#3 PROC Creation using kernel lambda

proc_object = lambda{ puts "lambda proc Object" }
proc_object.call 
puts "#{proc_object.lambda?}"

#4 IMPLICIT WAY 
def my_method(&my_block)
	puts "hello method"
	my_block.call 
	return my_block
end 

block_var = my_method{ puts "hello block"}
block_var.call 

#Create a LAMBDA 
lambda_create = lambda{|param1, param2| puts "param1: #{param1} and param2:#{param2}" }

lambda_create.call(20, 40)

proc_object1 = Proc.new {|a| "string" * a}

puts proc_object1.call(3)

puts Proc.new {|a| "team" * a}.call(2)
puts Proc.new {|a| "win" * a}[5]

string1 = "ruby"
string2 = "ruby"
puts "comparison #{string1 == string2}"

proc1 = Proc.new{"rails"} #proc object always in {}
proc2 = Proc.new{"rails"} #proc2 = proc1.dup even if you duplicate it would be still false
puts "comparison #{proc1 == proc2}"

#ARITY METHOD 

my_project = Proc.new{|b| "mobile "* b}
puts "hi! i need #{my_project.arity} arguments"

puts my_project.call(3)


my_project = Proc.new{|b,c | "mobile " *(b + c)}
puts "hi! i need #{my_project.arity} arguments"

puts my_project.call(3,3)


my_project = Proc.new{|b, *many | "#{b} and #{many}"} # -2 arugments to be unpacked
puts "hi! i need #{my_project.arity} arguments"

puts "#{~my_project.arity} arguments and the rest are optional"

#PROC PGM
def my_method
	puts "before proc"

	my_proc = proc{
		puts " inside the proc"
		return
	}
    my_proc.call 
    puts "after proc"
end
my_method

#LAMBDA PGM
def my_method
	puts "before proc"

	my_proc = lambda{
		puts " inside the proc"
		return

	}
    my_proc.call 
    puts "after proc"
end
my_method


def my_method
	puts "before proc"

	my_proc = lambda{
		puts " inside the proc"
		break
		
	}
    my_proc.call 
    puts "after proc"
end
my_method

# you will receive an error for this pgm due to proc break 
# #def my_method 
# 	puts "before proc"

# 	my_proc = proc{
# 		puts " inside the proc"
# 		break
		
# 	}
#     my_proc.call 
#     puts "after proc"
# end
# my_method

#you can set the time as 
time = Time.new(2017, 07, 17, 10,20,30)
puts time

time1 = Time.now
puts time 

puts time1.day 
puts time1.wday

#0 - sunday 6-saturday

puts time1.yday
puts time1.monday?
puts time.dst? #day light saving time

puts time1.to_a # sends as an array
puts time1.to_i #seconds passed after epoch jan 1 1970

require 'date'
d = Date.new(2015,07,17)
puts d

d1 = Time.new(2015, 02, 30).to_date #year ,month, dd
puts d1


time3 = Time.new(2015, 5, 16, 4,5,6)
puts time3.strftime("Year: %Y
	                  month: %m
	                  day: %d
	                  Time: %H:%M:%S  %p
	                  %A")




















































