class RPNCalculator
    
    def initialize
        @input = []
    end

    def push(n)
        @input.push(n.to_f)
    end
    
    def plus
        check_for_error
        second_value = @input.pop
        first_value = @input.pop
        @input.push(first_value + second_value)
    end
    
    def minus
        check_for_error
        second_value = @input.pop
        first_value = @input.pop
        @input.push(first_value - second_value)
    end
    
    def times
        check_for_error
        second_value = @input.pop
        first_value = @input.pop
        @input.push(first_value * second_value)
    end
    
    def divide
        check_for_error
        second_value = @input.pop
        first_value = @input.pop
        @input.push(first_value / second_value)
    end
    
    def  check_for_error
        if @input.empty?
            raise "calculator is empty"
        end
    end
    
    def value
        @input.last
    end
    
    def tokens(str)
        str = str.split(" ")
        str.map do |element|
            if element == "*" || element == "/" || element == "+" || element == "-"
                element.to_sym
            else
                element.to_f
            end
        end
    end
    
    def evaluate(str)
        str = tokens(str)
        str.map do |element|
            if element == :*
                times
            elsif element == :/
                divide
            elsif element == :+
                plus
            elsif element == :-
                minus
            else
                push(element)
            end
        end
       value
    end
end



