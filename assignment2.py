from collections import Counter
import re

def dict_reversal(d):
    """ dictionary value:key reversal"""
    l = {}
    for k,v in d.items():
        if v in l:
            l[v].append(k)
        else:
            l[v] = [k]
    return l

def str_desc(n):
    """ string reversal"""
    a = n.sort(reverse=True)
    return n

def Find(pat):
    """ pattern searching and counting it in a given string"""
    new_pat= str(pat)
    h = re.findall(r'co.e', new_pat)
    count = len(h)
    return count
  
def ind(a,b):
    """ this is more likely an string fetch from a pattern"""  
    final = "<" + b
    final_add = "</" + b
    stor = a.find(final)
    sto = a.find(final_add)
    value = a[stor+len(b)+1+1:sto]
    return value
    
def skipp(a):
    """ this function reduces integer 13 and the next integer following 13"""
    b = sum(a)
    for i, k in enumerate(a):
        if k == 13:
            b -= k
            b -= a[i+1]
    return b


def int_count(string):
    """ this functions returns the integer that occurs more than once"""
    new_string = []
    c_str = Counter(string) 
    count_str = dict(c_str) # if you are not converting to dict you would receive "counter" word in the output
    print count_str
    for i in count_str:
        if count_str[i] > 1:
            new_string.append(i)
    return new_string

def str_code(m):
    "this function returns a string of repetition"
    g = ""
    for i in range(len(m)+1):
        g += m[:i]
    return g


def funct1(m):
    return m*m

funct2 = lambda x:x%2 ==0
funct3 = lambda x,y: x if (x > y) else y


a_new = [1,2,3,13,2,4,2,13,2,4,1]
def skipp(a):
    """ this function reduces integer 13 and the next integer following 13"""
    b = sum(a_new)
    for i, k in enumerate(a_new):
        if k == 13:
            b -= k
            b -= a_new[i+1]
    return b
print skipp(a_new)




def histo(L):
    """this function creates a histogram of an string"""
    d = {}
    for i in L:
        if i in d:
            d[i] += 1
        else:
            d[i] = 1
    return d


def fnt(m):
    """ this fucntion determines the greatest of first and last integer and modifies the list containing only with the higher no"""
    new_list = []
    for i in m:
        if m[0] > m[len(m)-1]:
            new_list.append(m[0])
        else:
            new_list.append(m[len(m)-1])
    return new_list

class Employee:
    """ An Employee class that displays salary and name information"""
    empCount = 0
    def __init__(self,name,salary):
        self.name = name
        self.salary = salary
        Employee.empCount += 1
        
    def displayEmployee(self):
        """ displays the name and salary """
        print "emp name is", self.name
        print "emp salary is", self.salary
    def displayCount(self):
        """ displays “empCount” """
        return Employee.empCount

emp = Employee("tom", 2000)

if __name__ == "__main__":
    print dict_reversal({"a":1, "b":2, "c":1, "d":1})
    print str_desc(["hello", "we", "how are you"])
    print Find(("code", "come", "coke", "Tom", "mike"))
    print ind("what is the <red>rose</red> doing","red")
    print skipp([1,2,3,13,2,4,2,13,2,4,1])
    print int_count([1,2,3,2,4,2,8,5,5])
    print str_code("code")
    print "map function", map(funct1, [3,4,5])
    print "filter function", filter(funct2, [3,4,5,8.0,9])
    print "reduce function", reduce(funct3, [4,7,8.9, 0])
    print histo("wassup")
    print fnt([7,10,3,2])
    emp.displayEmployee()
    print "empCount is", emp.displayCount()



    

    
        
