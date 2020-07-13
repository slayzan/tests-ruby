def add(n1,n2)
    n1 + n2
end

def subtract(n1,n2)
    n1 - n2
end

def multiply(n1,n2)
    n1 * n2
end

def power(n1,n2)
    n1 ** n2
end

def sum(array)
    count = 0
    array.each{|i| count += i}
    count
end

def factorial(n1)
    count = 1
    return count if n1 == 1 || n1 == 0
    count =  n1 * factorial(n1 - 1)
end