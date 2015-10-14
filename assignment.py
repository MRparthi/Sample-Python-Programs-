def integ_two(a,b):
    """ test two integers"""
    if (a or b) == 10:
        return True
    elif (a + b) == 10:
        return True
    else:
        return False

d = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def even_no(d):
    """ check even no count in a string"""
    count = 0
    for i in d:
        if i % 2 == 0:
            count+= 1
    return count

def letter_count(words, char):
    """ letter count in a words"""
    r = []
    new_words = words.split()
    for word in new_words:
        r.append ((word, word.count(char)))
    return r

new_string = []
def string(string, number):
    """ no multiplied to a string"""
    a = []
    new_string = string.split()
    for i in new_string:
        for j in range(number):
            a.append(i)
    return a

def stri(a,b):
    """ takes two string and returns a dictionary"""
    c = zip(a,b)
    d = {k:v for k,v in c}
    return d


if __name__ == "__main__":
    print integ_two(5,4)
    print even_no(d)
    print letter_count ("how are you", "o")
    print string("how are you", 4)
    print stri(("hello","world"), (1,2))

    
    
    
