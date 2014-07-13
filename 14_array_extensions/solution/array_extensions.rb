class Array
    
    def sum
        total = 0
        self.each do |element|
            total = total + element
        end
        total
    end
    
    def square
        self.map do |element|
            element*element
        end
        
    end
    
    def square!
        
        self.map! do |element|
            element = element*element
        end
    end
        
end


