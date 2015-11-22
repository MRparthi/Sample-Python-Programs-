"""Multiple Inheritance"""
class subjects:
    def math(self):
        print "Grade in math is A"
class student:
    def name(self):
        print "student name is Tom"
class details(subjects,student): #Multiple Inheriting subjects and student class
    pass


#Composition is an OOPS concept similar to
#inheritance but uses "Has-a" relationship
#and not child-parent relationship

"""Composition"""
class Anony:
    def lover1(self):
        print "Mya"
    def lover2(self):
        print "Parthi liked Amya"
    def lover3(self):
        print "Parthi wished a girl like Arupa"
class Parthi:
    def __init__(self):
        self.value=Anony()
    def lover1(self):
        print "Parthi is loving Jujee"
    def lover2(self):
        self.value.lover2()
    def lover3(self):
        self.value.lover3()

""" Replace a word in a text using by stars(*)"""
def censor(text, word):
    length_of_word = len(word)
    word_now_censored = '*' * length_of_word
    wordlist = text.split()
    new_words_list = []
    for item in wordlist:
        if item == word:
            new_words_list.append(word_now_censored)
        else:
            new_words_list.append(item)

    return " ".join(new_words_list)



#Alternative way
def censor1(text, word):
    return ' '.join([('*' * len(word)) if x == word else x for x in text.split()])


#Using built-in Replace function
def censor2(text, word):
           return text.replace(word, ("*"*len(word)))

#One More Alternative way
def censor3(text, word):
    lst = text.split()
    while word in lst:
        index = lst.index(word)
        lst.remove(word)
        lst.insert(index,'*' * len(word))
    return " ".join(lst)

#SUPER keywork Usage example
class mainclass(list): # base class is list
    """ Polymorphism of an (list) data type and Inheriting its methods"""
    def __init__(self, *args):
        super(mainclass, self).__init__(*args)
        self.mainclass=0
    def __getitem__(self,index):
        self.mainclass += 1
        return super(mainclass,self).__getitem__(index)
Poly = mainclass(range(10))


def common(*args):
    """ this code determines the common literal appearing in the arguments"""
    res = []
    for x in args[0]:
        for other in args [1:]:
            if x not in other:break
        else:
            res.append(x)
    return res

a = "spam"
b = "mom"
c = "greema"

def letter_count(args):
    """ counts the no of time an letter appears in a given string """
    count = {}
    for i in meaty:
        key = i
        if key in count:
            count[key]+=1
        else:
            count[key]=1
    return count
meaty = "asjhdkajhskjfhalksjhdflaksjdkhaskjd"


class py_solution:
    """ pgm to check whether the given arguments has valid symbols """
    def is_valid_symbols(self, str1):
        stack, pchar = [], {"(": ")", "{": "}", "[": "]"}
        for symbol in str1:
            if symbol in pchar:
                stack.append(symbol)
            elif len(stack) == 0 or pchar[stack.pop()] != symbol:
                return False
        return len(stack) == 0
    
    
#Private variable/methods example
class planets:
    """ usage of private variable"""
    __sum = 0 #private variable
    def details(self):
        self.__sum=self.__sum+1
        return self.__sum
    def __counts(self): #Private method
        return "i am a planet:"
inst=planets()
inst.details()


# SUPER Usage example
class Person(object):
    def __init__(self, first, last):
        self.firstname = first
        self.lastname = last
    def Name(self):
        return self.firstname + " " + self.lastname
class Employee(Person):
    def __init__(self, first, last, staffnum):
        super(Employee, self).__init__(first, last)
        self.staffnumber = staffnum
    def GetEmployee(self):
        return self.Name() + ", " +  self.staffnumber
x = Person("Marge", "Simpson")
y = Employee("Homer", "Loyd", "1007")


#String Reversal
def reverse(s):
    t = ""
    for c in s:
        t = c + t # the key is here, try modifying t = t + c and check the results
    return t

#Alternative way
def reverse(s):
    c = s[::-1]
    return c




if __name__ == "__main__":
    c1=details()
    c2=Parthi()
    c1.math()
    c1.name()
    print " "
    c2.lover1()
    c2.lover2()
    c2.lover3()
    print " "
    print censor("python is good", "is")
    print censor1("whatsup dude", "dude")
    print censor2("you are great", "are")
    print censor3("the president tom", "the")
    print " "
    print Poly
    print " "
    print "common letter is", common(a,b,c)
    print " "
    print "letter_count", letter_count(meaty)
    print " "
    print "Symbols (){}[] are perfect", (py_solution().is_valid_symbols("(){}[]"))
    print"Symbols [{)} are incorrect", (py_solution().is_valid_symbols("[{)}"))
    print "Symbols () are perfect",(py_solution().is_valid_symbols("()"))
    print "Symbols [] are perfect",(py_solution().is_valid_symbols("[]"))
    print " "
    print inst._planets__sum
    print inst._planets__counts()
    print " "
    print "Employee Details:", x.Name()
    print "Employee Details:", y.GetEmployee()
    print " "
    print "reverse string is", reverse('Python!')
    print "reverse string alternate way", reverse('welcome')
    
    
