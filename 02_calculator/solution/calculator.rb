def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    array.inject(0) {|sum, num| sum + num}
end

def multiply(num1, num2)
    num1 * num2
end

def multiply_many(array)
    array.inject(1) {|total, num| total * num}
end

def power(num, exponent)
    num**exponent
end

def factorial(num)
    if num < 0
        "re-enter a new number"
    elsif num <= 1
        1
    else
        num * factorial(num-1)
    end
end